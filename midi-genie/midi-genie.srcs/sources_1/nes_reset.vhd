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
        NES_rst : out std_logic := '0'
    );
end nes_reset;

architecture Rtl of nes_reset is
begin

    procDetect: process(Clk, Reset) is
        variable last_m2 : std_logic := '0';
        variable count   : natural range 0 to 50 := 0;
    begin
        if Reset = '0' then
            NES_rst <= '0';
            last_m2 := M2;
            count := 0;
        elsif rising_edge(Clk) then
            if last_m2 = M2 then
                if count < 50 then
                    count := count + 1;
                else
                    NES_rst <= '1';
                end if;
            else
                last_m2 := M2;
                if (count > 5) and (count < 50) then
                    NES_rst <= '0';
                else
                    NES_rst <= '1';
                end if;
                count := 0;
            end if;
        end if;
    end process procDetect;

end Rtl;
