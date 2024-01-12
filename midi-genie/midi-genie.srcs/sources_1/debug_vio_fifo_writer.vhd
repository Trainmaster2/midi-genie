library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

entity vio_fifo_writer is
    generic (
        FIFO_DATA_WIDTH : natural := 32
    );
    port (
        Clk       : in  std_logic;
        VioData   : in  std_logic_vector (FIFO_DATA_WIDTH-1 downto 0) := (others => '0');
        VioWrite  : in  std_logic := '0';
        FifoData  : out std_logic_vector (FIFO_DATA_WIDTH-1 downto 0) := (others => '0');
        FifoWrite : out std_logic := '0'
    );
end vio_fifo_writer;

architecture Rtl of vio_fifo_writer is
begin

    procTrigger: process(Clk) is
        variable last_trig : std_logic := '0';
    begin
        if rising_edge(Clk) then
            if (VioWrite = '1') and (last_trig = '0') then
                FifoData <= VioData;
                FifoWrite <= '1';
            else
                FifoWrite <= '0';
            end if;
            last_trig := VioWrite;
        end if;
    end process procTrigger;

end Rtl;