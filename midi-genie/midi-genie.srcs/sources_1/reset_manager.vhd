library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

entity reset_manager is
    port (
        peripheral_aresetn : in  std_logic;
        nes_reset          : in  std_logic;

        peripheral_areset  : out std_logic;
        nes_resetn         : out std_logic;
        dual_reset         : out std_logic;
        dual_resetn        : out std_logic
    );
end reset_manager;

architecture Rtl of reset_manager is
    signal s_peripheral : std_logic;
    signal s_nes        : std_logic;
    signal s_dual       : std_logic;
begin

    s_peripheral <= not peripheral_aresetn;
    s_nes        <= nes_reset;
    s_dual       <= s_peripheral or s_nes;

    peripheral_areset <= s_peripheral;
    nes_resetn        <= not s_nes;
    dual_reset        <= s_dual;
    dual_resetn       <= not s_dual;

end Rtl;