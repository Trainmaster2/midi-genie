library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

entity clock_counter is
    port (
        Master_Clk  : in  std_logic := '0';
        Target_Clk  : in  std_logic := '0';
        Reset       : in  std_logic := '1';
        Length      : out std_logic_vector(31 downto 0) := (others => '0')
    );
end clock_counter;

architecture Rtl of clock_counter is
begin

    procCount: process(Master_Clk, Reset) is
        variable count : natural := 0;
        variable last  : std_logic := '0';
    begin
        if (Reset = '0') then
            count := 0;
        elsif rising_edge(Master_Clk) then
            if (Target_Clk = '1') and (Target_Clk /= last) then
                count := 0;
            else
                count := count + 1;
            end if;
            Length <= std_logic_vector(to_unsigned(count, 32));
            last   := Target_Clk;
        end if;
    end process procCount;

end Rtl;