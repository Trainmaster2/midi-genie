library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

use work.nes_apu_records.all;

entity apu_fifo_writer is
    generic (
        FIFO_DATA_WIDTH  : natural := 32;
        ENABLE_PULSE_1   : boolean := true;
        ENABLE_PULSE_2   : boolean := true;
        ENABLE_TRIANGLE  : boolean := true;
        ENABLE_NOISE     : boolean := true;
        ENABLE_DMC       : boolean := true
    );
    port (
        Clk              : in  std_logic;
        Reset            : in  std_logic := '1';
        CPU_Rst          : in  std_logic := '1';

        Pulse1_Message   : in  std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0');
        Pulse2_Message   : in  std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0');
        Triangle_Message : in  std_logic_vector(c_APU_TRIANGLE_MESSAGE - 1 downto 0) := (others => '0');
        Noise_Message    : in  std_logic_vector(c_APU_NOISE_MESSAGE - 1 downto 0) := (others => '0');

        FifoData         : out std_logic_vector(FIFO_DATA_WIDTH-1 downto 0) := (others => '0');
        FifoWrite        : out std_logic := '0'
    );
end apu_fifo_writer;

architecture Rtl of apu_fifo_writer is
    signal pulse1_message_last   : std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0');
    signal pulse2_message_last   : std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0');
    signal triangle_message_last : std_logic_vector(c_APU_TRIANGLE_MESSAGE - 1 downto 0) := (others => '0');
    signal noise_message_last    : std_logic_vector(c_APU_NOISE_MESSAGE - 1 downto 0) := (others => '0');
begin

    procTrigger: process(Clk) is
        variable last_trig : std_logic := '0';
    begin
        if (Reset = '0') or (CPU_Rst = '0') then
            FifoData              <= (others => '0');
            FifoWrite             <= '0';
            pulse1_message_last   <= (others => '0');
            pulse2_message_last   <= (others => '0');
            triangle_message_last <= (others => '0');
            noise_message_last    <= (others => '0');
        elsif rising_edge(Clk) then
            if ENABLE_PULSE_1 and ((Pulse1_Message /= pulse1_message_last) and ((Pulse1_Message(3) = '1') or (pulse1_message_last(3) = '1'))) then
                FifoData(c_APU_PULSE_MESSAGE - 1 downto 0) <= Pulse1_Message;
                FifoWrite <= '1';
                pulse1_message_last <= Pulse1_Message;
            elsif ENABLE_PULSE_2 and ((Pulse2_Message /= pulse2_message_last) and ((Pulse2_Message(3) = '1') or (pulse2_message_last(3) = '1'))) then
                FifoData(c_APU_PULSE_MESSAGE - 1 downto 0) <= Pulse2_Message;
                FifoWrite <= '1';
                pulse2_message_last <= Pulse2_Message;
            elsif ENABLE_TRIANGLE and ((Triangle_Message /= triangle_message_last) and ((Triangle_Message(3) = '1') or (triangle_message_last(3) = '1'))) then
                FifoData(c_APU_TRIANGLE_MESSAGE - 1 downto 0) <= Triangle_Message;
                FifoWrite <= '1';
                triangle_message_last <= Triangle_Message;
            elsif ENABLE_NOISE and ((Noise_Message /= noise_message_last) and ((Noise_Message(3) = '1') or (noise_message_last(3) = '1'))) then
                FifoData(c_APU_NOISE_MESSAGE - 1 downto 0) <= Noise_Message;
                FifoWrite <= '1';
                noise_message_last <= Noise_Message;
            else
                FifoWrite <= '0';
            end if;
        end if;
    end process procTrigger;

end Rtl;