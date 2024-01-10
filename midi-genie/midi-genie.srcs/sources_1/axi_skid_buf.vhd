-- https://zipcpu.com/blog/2022/05/07/learning-axi.html
-- https://zipcpu.com/blog/2019/05/22/skidbuffer.html
-- https://github.com/ZipCPU/wb2axip/blob/master/rtl/skidbuffer.v

library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.numeric_std.all;

entity axi_skid_buf is
    generic (
        DATA_WIDTH : natural := 32;
        OUT_REG    : natural range 0 to 1 := 0
    );
    port (
        I_clk   : in  std_logic;
        I_reset : in  std_logic;
        I_valid : in  std_logic;
        I_data  : in  std_logic_vector (DATA_WIDTH-1 downto 0);
        I_ready : in  std_logic;
        O_valid : out std_logic;
        O_data  : out std_logic_vector (DATA_WIDTH-1 downto 0);
        O_ready : out std_logic
    );
end axi_skid_buf;

architecture Rtl of axi_skid_buf is
    signal r_valid  : std_logic := '0';
    signal r_data   : std_logic_vector (DATA_WIDTH-1 downto 0) := (others => '0');
    signal s_valid  : std_logic;
    signal s_data   : std_logic_vector (DATA_WIDTH-1 downto 0) := (others => '0');
    signal s_ready  : std_logic;
    signal ro_valid : std_logic := '0';
begin

    s_ready <= not r_valid;
    O_valid <= s_valid;
    O_ready <= s_ready;
    
    procValid: process(I_clk) is
    begin
        if rising_edge(I_clk) then
            if I_reset = '1' then
                r_valid <= '0';
            elsif ((I_valid = '1') and (s_ready = '1')) and  ((s_valid = '1') and (I_ready = '0')) then
                r_valid <= '1';
		    elsif i_ready = '1' then
			    r_valid <= '0';
            end if;
        end if;
    end process procValid;
    
    procData: process(I_clk) is
    begin
        if rising_edge(I_clk) then
            if s_ready = '0' then
                r_data <= i_data;
            end if;
        end if;
    end process procData;
    
    genOutRegOff: if OUT_REG = 0 generate
        s_valid <= (not I_reset) and (I_valid or r_valid);
        
        procOut: process is
        begin
            if r_valid = '1' then
                O_data <= r_data;
            else
                O_data <= i_data;
            end if;
        end process procOut;
    end generate genOutRegOff;
    
    genOutRegOn: if OUT_REG = 1 generate
        s_valid <= ro_valid;
        O_data  <= s_data;
        
        procRoValid: process(I_clk) is
        begin
            if rising_edge(I_clk) then
                if r_valid = '1' then
                    ro_valid <= '0';
                elsif (s_valid = '0') or (I_ready = '1') then
                    ro_valid <= I_valid or r_valid;
                end if;
            end if;
        end process procRoValid;
        
        procOut: process(I_clk) is
        begin
            if rising_edge(I_clk) then
                if (s_valid = '0') or (I_ready = '1') then
                    if r_valid = '1' then
                        s_data <= r_data;
                    else
                        s_data <= i_data;
                    end if;
                end if;
            end if;
        end process procOut;
    end generate genOutRegOn;

end Rtl;
