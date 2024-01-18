-- https://zipcpu.com/blog/2022/05/07/learning-axi.html
-- https://zipcpu.com/blog/2020/03/08/easyaxil.html
-- https://github.com/ZipCPU/wb2axip/blob/master/rtl/easyaxil.v

package FIFO_READER_AXI_CONFIG is
  constant AXI_ADDR_WIDTH : natural := 4;
end FIFO_READER_AXI_CONFIG;

library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.numeric_std.all;
    use ieee.math_real.all;

use work.FIFO_READER_AXI_CONFIG.all;

entity axi_fifo_reader is
    generic (
        AXI_DATA_WIDTH  : natural := 32;
        FIFO_DATA_WIDTH : natural := 32
    );
    port (
        S_AXI_ACLK    : in  std_logic;
        S_AXI_ARESETN : in  std_logic;
        
        S_AXI_ARVALID : in  std_logic;
        S_AXI_ARREADY : out std_logic;
        S_AXI_ARADDR  : in  std_logic_vector (AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT  : in  std_logic_vector (2 downto 0);
        
        S_AXI_WVALID  : in  std_logic;
        S_AXI_WREADY  : out std_logic;
        S_AXI_WDATA   : in  std_logic_vector (AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB   : in  std_logic_vector (AXI_DATA_WIDTH/8-1 downto 0);
        
        S_AXI_BVALID  : out std_logic;
        S_AXI_BREADY  : in  std_logic;
        S_AXI_BRESP   : out std_logic_vector (1 downto 0);
        
        S_AXI_AWVALID : in  std_logic;
        S_AXI_AWREADY : out std_logic;
        S_AXI_AWADDR  : in  std_logic_vector (AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT  : in  std_logic_vector (2 downto 0);
        
        S_AXI_RVALID  : out std_logic;
        S_AXI_RREADY  : in  std_logic;
        S_AXI_RDATA   : out std_logic_vector (AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP   : out std_logic_vector (1 downto 0);
        
        FifoData      : in  std_logic_vector (FIFO_DATA_WIDTH-1 downto 0) := (others => '0');
        FifoEmpty     : in  std_logic := '1';
        FifoRead      : out std_logic := '0';
        DataAvailable : out std_logic := '0'
    );
end axi_fifo_reader;

architecture Rtl of axi_fifo_reader is
    constant ADDRLSB       : integer := integer(ceil(log2(real(AXI_DATA_WIDTH)))) - 3;
    constant WSKD_LENGTH   : integer := AXI_DATA_WIDTH+AXI_DATA_WIDTH/8;

    signal reset            : std_logic;
    signal axi_bvalid       : std_logic := '0';
    signal axi_write_ready  : std_logic;
    signal axi_read_ready   : std_logic;
    signal axi_read_valid   : std_logic := '0';
    signal axi_read_data    : std_logic_vector (AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal awskd_valid      : std_logic;
    signal awskd_addr       : std_logic_vector (AXI_ADDR_WIDTH-ADDRLSB-1 downto 0);
    signal wskd_in          : std_logic_vector (WSKD_LENGTH-1 downto 0);
    signal wskd_out         : std_logic_vector (WSKD_LENGTH-1 downto 0);
    signal wskd_valid       : std_logic;
    signal wskd_data        : std_logic_vector (AXI_DATA_WIDTH-1 downto 0);
    signal wskd_strb        : std_logic_vector (AXI_DATA_WIDTH/8-1 downto 0);
    signal arskd_valid      : std_logic;
    signal arskd_addr       : std_logic_vector (AXI_ADDR_WIDTH-ADDRLSB-1 downto 0);
    
    signal wskd_fifo        : std_logic_vector (AXI_DATA_WIDTH-1 downto 0);
    
    signal dataAvailableBuf : std_logic := '0';
begin

    reset           <= not S_AXI_ARESETN;
    axi_write_ready <= awskd_valid and wskd_valid and ((not axi_bvalid) or S_AXI_BREADY);
    axi_read_ready  <= arskd_valid and ((not axi_read_valid) or S_AXI_RREADY);
    wskd_in         <= S_AXI_WDATA & S_AXI_WSTRB;
    wskd_data       <= wskd_out(wskd_out'length-1 downto S_AXI_WSTRB'length);
    wskd_strb       <= wskd_out(S_AXI_WSTRB'length-1 downto 0);
    
    S_AXI_BVALID    <= axi_bvalid;
    S_AXI_BRESP     <= "00";
    S_AXI_RVALID    <= axi_read_valid;
    S_AXI_RDATA     <= axi_read_data;
    S_AXI_RRESP     <= "00";

    DataAvailable   <= dataAvailableBuf;

    procBvalid: process(S_AXI_ACLK) is
    begin
        if rising_edge(S_AXI_ACLK) then
            if reset = '1' then
                axi_bvalid <= '0';
            elsif axi_write_ready = '1' then
                axi_bvalid <= '1';
            elsif S_AXI_BREADY = '1' then
                axi_bvalid <= '0';
            end if;
        end if;
    end process procBvalid;

    procRvalid: process(S_AXI_ACLK) is
    begin
        if rising_edge(S_AXI_ACLK) then
            if reset = '1' then
                axi_read_valid <= '0';
            elsif axi_read_ready = '1' then
                axi_read_valid <= '1';
            elsif S_AXI_RREADY = '1' then
                axi_read_valid <= '0';
            end if;
        end if;
    end process procRvalid;
    
    procRead: process(S_AXI_ACLK) is
    begin
        if (S_AXI_ARESETN = '0') then
            axi_read_data <= (others => '0');
            dataAvailableBuf <= '0';
        elsif rising_edge(S_AXI_ACLK) then
            if dataAvailableBuf = '1' then
                FifoRead <= '0';
            elsif FifoEmpty = '0' then
                dataAvailableBuf <= '1';
                FifoRead <= '1';
            end if;
            if (axi_read_valid = '0') or (S_AXI_RREADY = '1') then
                if axi_read_ready = '0' then
                    axi_read_data <= (others => '0');
                else
                    axi_read_data(FIFO_DATA_WIDTH-1 downto 0) <= FifoData;
                    if FifoEmpty = '0' then
                        dataAvailableBuf <= '1';
                        FifoRead <= '1';
                    else
                        dataAvailableBuf <= '0';
                        FifoRead <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process procRead;

    instSkidAW: entity work.axi_skid_buf
    generic map (
        DATA_WIDTH => AXI_ADDR_WIDTH-ADDRLSB,
        OUT_REG    => 0
    )
    port map (
        I_clk   => S_AXI_ACLK,
        I_reset => reset,
        I_valid => S_AXI_AWVALID,
        O_ready => S_AXI_AWREADY,
        I_data  => S_AXI_AWADDR(AXI_ADDR_WIDTH-1 downto ADDRLSB),
        O_valid => awskd_valid,
        I_ready => axi_write_ready,
        O_data  => awskd_addr
    );
    
    instSkidW: entity work.axi_skid_buf
    generic map (
        DATA_WIDTH => WSKD_LENGTH,
        OUT_REG    => 0
    )
    port map (
        I_clk   => S_AXI_ACLK,
        I_reset => reset,
        I_valid => S_AXI_WVALID,
        O_ready => S_AXI_WREADY,
        I_data  => wskd_in,
        O_valid => wskd_valid,
        I_ready => axi_write_ready,
        O_data  => wskd_out
    );
    
    instSkidAR: entity work.axi_skid_buf
    generic map (
        DATA_WIDTH => AXI_ADDR_WIDTH-ADDRLSB,
        OUT_REG    => 0
    )
    port map (
        I_clk   => S_AXI_ACLK,
        I_reset => reset,
        I_valid => S_AXI_ARVALID,
        O_ready => S_AXI_ARREADY,
        I_data  => S_AXI_ARADDR(AXI_ADDR_WIDTH-1 downto ADDRLSB),
        O_valid => arskd_valid,
        I_ready => axi_read_ready,
        O_data  => arskd_addr
    );

end Rtl;
