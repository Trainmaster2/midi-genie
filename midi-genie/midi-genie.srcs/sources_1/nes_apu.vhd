library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

use work.nes_apu_records.all;

entity nes_apu is
    port (
        Clk                 : in  std_logic;
        Reset               : in  std_logic := '1';
        CPU_Clk             : in  std_logic;
        CPU_M2              : in  std_logic;
        CPU_Rst             : in  std_logic := '1';
        CPU_Addr            : in  std_logic_vector(14 downto 0) := (others => '0');
        CPU_Data            : in  std_logic_vector(7 downto 0) := (others => '0');
        CPU_RomSel          : in  std_logic := '0';
        CPU_RW              : in  std_logic := '0';
        APU_Pulse1_Out      : out std_logic_vector(c_APU_PULSE_VECTOR - 1 downto 0) := (others => '0');
        APU_Pulse2_Out      : out std_logic_vector(c_APU_PULSE_VECTOR - 1 downto 0) := (others => '0');
        APU_Triangle_Out    : out std_logic_vector(c_APU_TRIANGLE_VECTOR - 1 downto 0) := (others => '0');
        APU_Noise_Out       : out std_logic_vector(c_APU_NOISE_VECTOR - 1 downto 0) := (others => '0');
        APU_DMC_Out         : out std_logic_vector(c_APU_DMC_VECTOR - 1 downto 0) := (others => '0');
        APU_Status_Out      : out std_logic_vector(c_APU_STATUS_VECTOR - 1 downto 0) := (others => '0');
        APU_Counter_Out     : out std_logic_vector(c_APU_FRAME_COUNTER_VECTOR - 1 downto 0) := (others => '0');
        APU_Pulse1_Message  : out std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0');
        APU_Pulse2_Message  : out std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0')
    );
end nes_apu;

architecture Rtl of nes_apu is
    signal APU_Pulse1   : t_APU_PULSE := c_APU_PULSE_INIT;
    signal APU_Pulse2   : t_APU_PULSE := c_APU_PULSE_INIT;
    signal APU_Triangle : t_APU_TRIANGLE := c_APU_TRIANGLE_INIT;
    signal APU_Noise    : t_APU_NOISE := c_APU_NOISE_INIT;
    signal APU_DMC      : t_APU_DMC := c_APU_DMC_INIT;
    signal APU_Status   : t_APU_STATUS := c_APU_STATUS_INIT;
    signal APU_Counter  : t_APU_FRAME_COUNTER := c_APU_FRAME_COUNTER_INIT;

    signal APU_Tick_CE     : std_logic := '0';
    signal APU_Quarter_CE  : std_logic := '0';
    signal APU_Half_CE     : std_logic := '0';
begin

    APU_Pulse1_Out     <= f_APU_PULSE_2_VECTOR(APU_Pulse1);
    APU_Pulse2_Out     <= f_APU_PULSE_2_VECTOR(APU_Pulse2);
    APU_Triangle_Out   <= f_APU_TRIANGLE_2_VECTOR(APU_Triangle);
    APU_Noise_Out      <= f_APU_NOISE_2_VECTOR(APU_Noise);
    APU_DMC_Out        <= f_APU_DMC_2_VECTOR(APU_DMC);
    APU_Status_Out     <= f_APU_STATUS_2_VECTOR(APU_Status);
    APU_Counter_Out    <= f_APU_FRAME_COUNTER_2_VECTOR(APU_Counter);

    APU_Pulse1_Message <= f_APU_PULSE_2_MESSAGE('0', APU_Pulse1);
    APU_Pulse2_Message <= f_APU_PULSE_2_MESSAGE('1', APU_Pulse2);

    procTick: process(CPU_M2, Reset, CPU_Rst) is
    begin
        if (Reset = '0') or (CPU_Rst = '0') then
            APU_Tick_CE <= '0';
        elsif rising_edge(CPU_M2) then
            APU_Tick_CE <= not APU_Tick_CE;
        end if;
    end process procTick;

    procFrameCounter: process(CPU_M2, Reset, CPU_Rst) is
        variable counter : natural range 0 to 18640 := 0;
    begin
        if (Reset = '0') or (CPU_Rst = '0') then
            APU_Quarter_CE <= '0';
            APU_Half_CE    <= '0';
            counter        := 0;
        elsif rising_edge(CPU_M2) then
            APU_Quarter_CE <= '0';
            APU_Half_CE    <= '0';
            if (APU_Tick_CE = '1') then
                counter := counter + 1;
                if (counter = 3728) then
                    APU_Quarter_CE <= '1';
                elsif (counter = 7456) then
                    APU_Quarter_CE <= '1';
                    APU_Half_CE    <= '1';
                elsif (counter = 11185) then
                    APU_Quarter_CE <= '1';
                elsif (APU_Counter.mode = '0') and (counter = 14915) then
                    APU_Quarter_CE <= '1';
                    APU_Half_CE    <= '1';
                    counter        := 0;
                elsif (APU_Counter.mode = '1') and (counter = 18640) then
                    APU_Quarter_CE <= '1';
                    APU_Half_CE    <= '1';
                    counter        := 0;
                end if;
            end if;
        end if;
    end process procFrameCounter;

    procMainLogic: process(CPU_M2, Reset, CPU_Rst) is
        variable Pulse1_Envelope_Start   : std_logic := '0';
        variable Pulse1_Envelope_Divider : natural range 0 to 15 := 0;
        variable Pulse2_Envelope_Start   : std_logic := '0';
        variable Pulse2_Envelope_Divider : natural range 0 to 15 := 0;
    begin
        if (Reset = '0') or (CPU_Rst = '0') then
            APU_Pulse1   <= c_APU_PULSE_INIT;
            APU_Pulse2   <= c_APU_PULSE_INIT;
            APU_Triangle <= c_APU_TRIANGLE_INIT;
            APU_Noise    <= c_APU_NOISE_INIT;
            APU_DMC      <= c_APU_DMC_INIT;
            APU_Status   <= c_APU_STATUS_INIT;
            APU_Counter  <= c_APU_FRAME_COUNTER_INIT;
            Pulse1_Envelope_Start   := '0';
            Pulse1_Envelope_Divider := 0;
            Pulse2_Envelope_Start   := '0';
            Pulse2_Envelope_Divider := 0;
        elsif falling_edge(CPU_M2) then
            if (CPU_RomSel = '1') and (CPU_RW = '0') then
                case (CPU_Addr) is
                    when X"4000" =>
                        APU_Pulse1 <= f_APU_PULSE_REG1(APU_Pulse1, CPU_Data);
                    when X"4001" =>
                        APU_Pulse1 <= f_APU_PULSE_REG2(APU_Pulse1, CPU_Data);
                    when X"4002" =>
                        APU_Pulse1 <= f_APU_PULSE_REG3(APU_Pulse1, CPU_Data);
                    when X"4003" =>
                        APU_Pulse1 <= f_APU_PULSE_REG4(APU_Pulse1, CPU_Data, APU_Status.pulse1_active);
                        Pulse1_Envelope_Start := '1';
                    
                    when X"4004" =>
                        APU_Pulse2 <= f_APU_PULSE_REG1(APU_Pulse2, CPU_Data);
                    when X"4005" =>
                        APU_Pulse2 <= f_APU_PULSE_REG2(APU_Pulse2, CPU_Data);
                    when X"4006" =>
                        APU_Pulse2 <= f_APU_PULSE_REG3(APU_Pulse2, CPU_Data);
                    when X"4007" =>
                        APU_Pulse2 <= f_APU_PULSE_REG4(APU_Pulse2, CPU_Data, APU_Status.pulse2_active);
                        Pulse2_Envelope_Start := '1';
                    
                    when X"4008" =>
                        APU_Triangle <= f_APU_TRIANGLE_REG1(APU_Triangle, CPU_Data);
                    when X"400A" =>
                        APU_Triangle <= f_APU_TRIANGLE_REG3(APU_Triangle, CPU_Data);
                    when X"400B" =>
                        APU_Triangle <= f_APU_TRIANGLE_REG4(APU_Triangle, CPU_Data);
                    
                    when X"400C" =>
                        APU_Noise <= f_APU_NOISE_REG1(APU_Noise, CPU_Data);
                    when X"400E" =>
                        APU_Noise <= f_APU_NOISE_REG3(APU_Noise, CPU_Data);
                    when X"400F" =>
                        APU_Noise <= f_APU_NOISE_REG4(APU_Noise, CPU_Data);
                    
                    when X"4010" =>
                        APU_DMC <= f_APU_DMC_REG1(APU_DMC, CPU_Data);
                    when X"4011" =>
                        APU_DMC <= f_APU_DMC_REG2(APU_DMC, CPU_Data);
                    when X"4012" =>
                        APU_DMC <= f_APU_DMC_REG3(APU_DMC, CPU_Data);
                    when X"4013" =>
                        APU_DMC <= f_APU_DMC_REG4(APU_DMC, CPU_Data);
                    
                    when X"4015" =>
                        APU_Status  <= f_APU_STATUS_REG1(APU_Status, CPU_Data);
                        if (CPU_Data(0) = '0') then
                            APU_Pulse1.length_counter <= (others => '0');
                        end if;
                        if (CPU_Data(1) = '0') then
                            APU_Pulse2.length_counter <= (others => '0');
                        end if;
                    when X"4017" =>
                        APU_Counter <= f_APU_FRAME_COUNTER_REG1(APU_Counter, CPU_Data);
                    when others => null;
                end case;
            end if;

            if (APU_Half_CE = '1') then
                if (APU_Pulse1.length_counter_halt = '0') and (APU_Pulse1.length_counter > 0) then
                    APU_Pulse1.length_counter <= APU_Pulse1.length_counter - 1;
                end if;
                if (APU_Pulse2.length_counter_halt = '0') and (APU_Pulse2.length_counter > 0) then
                    APU_Pulse2.length_counter <= APU_Pulse2.length_counter - 1;
                end if;
            end if;

            if (APU_Quarter_CE = '1') then
                if (Pulse1_Envelope_Start = '1') then
                    Pulse1_Envelope_Start := '0';
                    Pulse1_Envelope_Divider := to_integer(APU_Pulse1.envelope);
                    APU_Pulse1.volume <= (others => '1');
                elsif (Pulse1_Envelope_Divider = 0) then
                    Pulse1_Envelope_Divider := to_integer(APU_Pulse1.envelope);
                    if (APU_Pulse1.volume > 0) then
                        APU_Pulse1.volume <= APU_Pulse1.volume - 1;
                    elsif (APU_Pulse1.length_counter_halt = '1') then
                        APU_Pulse1.volume <= (others => '1');
                    end if;
                else
                    Pulse1_Envelope_Divider := Pulse1_Envelope_Divider - 1;
                end if;
                if (Pulse2_Envelope_Start = '1') then
                    Pulse2_Envelope_Start := '0';
                    Pulse2_Envelope_Divider := to_integer(APU_Pulse2.envelope);
                    APU_Pulse2.volume <= (others => '1');
                elsif (Pulse2_Envelope_Divider = 0) then
                    Pulse2_Envelope_Divider := to_integer(APU_Pulse2.envelope);
                    if (APU_Pulse2.volume > 0) then
                        APU_Pulse2.volume <= APU_Pulse2.volume - 1;
                    elsif (APU_Pulse2.length_counter_halt = '1') then
                        APU_Pulse2.volume <= (others => '1');
                    end if;
                else
                    Pulse2_Envelope_Divider := Pulse2_Envelope_Divider - 1;
                end if;
            end if;
        end if;
    end process procMainLogic;

end Rtl;
