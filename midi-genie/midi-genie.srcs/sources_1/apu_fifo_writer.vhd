library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

entity apu_fifo_writer is
    generic (
        FIFO_DATA_WIDTH : natural := 32
    );
    port (
        Clk           : in  std_logic;
        Reset         : in  std_logic := '1';

        Pulse1_Timer  : in  std_logic_vector(11 downto 0) := (others => '0');
        Pulse1_Volume : in  std_logic_vector(3 downto 0) := (others => '0');
        Pulse2_Timer  : in  std_logic_vector(11 downto 0) := (others => '0');
        Pulse2_Volume : in  std_logic_vector(3 downto 0) := (others => '0');

        FifoData      : out std_logic_vector(FIFO_DATA_WIDTH-1 downto 0) := (others => '0');
        FifoWrite     : out std_logic := '0'
    );
end apu_fifo_writer;

architecture Rtl of apu_fifo_writer is
    signal pulse1_timer_last  : std_logic_vector(11 downto 0) := (others => '0');
    signal pulse1_volume_last : std_logic_vector(3 downto 0) := (others => '0');
    signal pulse2_timer_last  : std_logic_vector(11 downto 0) := (others => '0');
    signal pulse2_volume_last : std_logic_vector(3 downto 0) := (others => '0');
begin

    procTrigger: process(Clk) is
        variable last_trig : std_logic := '0';
    begin
        if (Reset = '0') then
            FifoData           <= (others => '0');
            FifoWrite          <= '0';
            pulse1_timer_last  <= (others => '0');
            pulse1_volume_last <= (others => '0');
            pulse2_timer_last  <= (others => '0');
            pulse2_volume_last <= (others => '0');
        elsif rising_edge(Clk) then
            if (((Pulse1_Timer(0) = '1') or (pulse1_timer_last(0) = '1')) and (Pulse1_Timer /= pulse1_timer_last)) then
                FifoData(15 downto 0) <= Pulse1_Timer & "000" & "0";
                FifoWrite <= '1';
                pulse1_timer_last <= Pulse1_Timer;
            elsif (((Pulse2_Timer(0) = '1') or (pulse2_timer_last(0) = '1')) and (Pulse2_Timer /= pulse2_timer_last)) then
                FifoData(15 downto 0) <= Pulse2_Timer & "001" & "0";
                FifoWrite <= '1';
                pulse2_timer_last <= Pulse2_Timer;
            elsif (Pulse1_Volume /= pulse1_volume_last) then
                FifoData(7 downto 0) <= Pulse1_Volume & "000" & "1";
                FifoWrite <= '1';
                pulse1_volume_last <= Pulse1_Volume;
            elsif (Pulse2_Volume /= pulse2_volume_last) then
                FifoData(7 downto 0) <= Pulse2_Volume & "001" & "1";
                FifoWrite <= '1';
                pulse2_volume_last <= Pulse2_Volume;
            else
                FifoWrite <= '0';
            end if;
        end if;
    end process procTrigger;

end Rtl;