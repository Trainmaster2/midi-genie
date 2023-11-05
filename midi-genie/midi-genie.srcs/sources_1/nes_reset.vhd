library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

--  NOT WORKING  --
--  For some reason count does not always reset to 0.
--  Checking if it equals 0 right after setting it works,
--  but outputting it shows the true value.

entity nes_reset is
    port (
        Clk     : in  std_logic;
        Reset   : in  std_logic;
        M2      : in  std_logic := '0';
        NES_rst : out std_logic := '0';
        test    : out std_logic_vector(3 downto 0) := (others => '0');
        test2   : out std_logic := '0';
        test3   : out std_logic := '0';
        test4   : out std_logic := '0';
        test5   : out std_logic_vector(3 downto 0) := (others => '0');
        test6   : out std_logic := '0';
        test7   : out std_logic := '0'
    );
end nes_reset;

architecture Rtl of nes_reset is
    signal testcount : unsigned(3 downto 0) := (others => '0');
    signal ff1       : std_logic := '0';
    signal ff2       : std_logic := '0';
begin

    procDetect: process(Clk, Reset) is
        variable count   : natural range 0 to 100 := 0;
        variable rising  : boolean;
        variable falling : boolean;
    begin
        if Reset = '0' then
            NES_rst <= '0';
            count := 0;
        elsif rising_edge(Clk) then
            falling := falling_edge(M2);
            if falling then
                if (count > 10) and (count < 100) then
                    NES_rst <= '1';
                else
                    NES_rst <= '0';
                end if;
                count := 0;
            else
                if count < 100 then
                    count := count + 1;
                else
                    NES_rst <= '0';
                end if;
            end if;
        end if;
    end process procDetect;

    test <= std_logic_vector(testcount);
    test3 <= ff1;
    test4 <= ff2;
    procTest: process(Clk, M2) is
        variable count   : natural range 0 to 16 := 0;
    begin
        if rising_edge(Clk) then
            ff1 <= not ff1;
            if testcount < 13 then
                testcount <= testcount + 1;
                test6 <= '0';
            else
                test2 <= '0';
                test6 <= '1';
            end if;
        end if;
        if rising_edge(M2) then
            ff2 <= not ff2;
            test5 <= std_logic_vector(testcount);
            if testcount = 12 then
                test2 <= '1';
                test7 <= '0';
            else
                test2 <= '0';
                test7 <= '1';
            end if;
            testcount <= (others => '0');
            -- test <= std_logic_vector(to_unsigned(count, test'length));
        end if;
    end process procTest;

end Rtl;
