-- https://zipcpu.com/blog/2022/05/07/learning-axi.html
-- https://zipcpu.com/blog/2020/03/08/easyaxil.html
-- https://github.com/ZipCPU/wb2axip/blob/master/rtl/easyaxil.v

package APU_WRITER_AXI_CONFIG is
  constant AXI_ADDR_WIDTH : natural := 4;
  constant AXI_DATA_WIDTH : natural := 32;
end APU_WRITER_AXI_CONFIG;

library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.numeric_std.all;
    use ieee.math_real.all;

use work.APU_WRITER_AXI_CONFIG.all;

use work.nes_apu_records.all;

entity axi_apu_writer is
    generic (
        FIFO_DATA_WIDTH  : natural := 32;
        DEFAULT_PULSE_1   : boolean := true;
        DEFAULT_PULSE_2   : boolean := true;
        DEFAULT_TRIANGLE  : boolean := true;
        DEFAULT_NOISE     : boolean := true;
        DEFAULT_DMC       : boolean := true
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

        CPU_Rst          : in  std_logic := '1';

        Pulse1_Message   : in  std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0');
        Pulse2_Message   : in  std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0');
        Triangle_Message : in  std_logic_vector(c_APU_TRIANGLE_MESSAGE - 1 downto 0) := (others => '0');
        Noise_Message    : in  std_logic_vector(c_APU_NOISE_MESSAGE - 1 downto 0) := (others => '0');
        DMC_Message      : in  std_logic_vector(c_APU_DMC_MESSAGE - 1 downto 0) := (others => '0');

        FifoData         : out std_logic_vector(FIFO_DATA_WIDTH-1 downto 0) := (others => '0');
        FifoWrite        : out std_logic := '0'
    );
end axi_apu_writer;

architecture Rtl of axi_apu_writer is
    constant ADDRLSB       : integer := integer(ceil(log2(real(AXI_DATA_WIDTH)))) - 3;
    constant WSKD_LENGTH   : integer := AXI_DATA_WIDTH+AXI_DATA_WIDTH/8;
    
    function apply_wstrb (
        signal prior_data : in unsigned (AXI_DATA_WIDTH-1 downto 0);
        signal new_data   : in std_logic_vector (AXI_DATA_WIDTH-1 downto 0);
        signal wstrb      : in std_logic_vector (AXI_DATA_WIDTH/8-1 downto 0))
        return unsigned is
        variable wstrb_out : unsigned (AXI_DATA_WIDTH-1 downto 0);
    begin
        for k in 0 to (AXI_DATA_WIDTH/8)-1 loop
            if wstrb(k) = '1' then
                wstrb_out((k*8)+7 downto k*8) := unsigned(new_data((k*8)+7 downto k*8));
            else
                wstrb_out((k*8)+7 downto k*8) := prior_data((k*8)+7 downto k*8);
            end if;
        end loop;
        return wstrb_out;
    end function apply_wstrb;
    
    function bool_to_logic (value : boolean) return std_logic is
    begin
        if value then
            return '1';
        else
            return '0';
        end if;
    end function bool_to_logic;

    signal reset           : std_logic;
    signal axi_bvalid      : std_logic := '0';
    signal axi_write_ready : std_logic;
    signal axi_read_ready  : std_logic;
    signal axi_read_valid  : std_logic := '0';
    signal axi_read_data   : std_logic_vector (AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal awskd_valid     : std_logic;
    signal awskd_addr      : std_logic_vector (AXI_ADDR_WIDTH-ADDRLSB-1 downto 0);
    signal wskd_in         : std_logic_vector (WSKD_LENGTH-1 downto 0);
    signal wskd_out        : std_logic_vector (WSKD_LENGTH-1 downto 0);
    signal wskd_valid      : std_logic;
    signal wskd_data       : std_logic_vector (AXI_DATA_WIDTH-1 downto 0);
    signal wskd_strb       : std_logic_vector (AXI_DATA_WIDTH/8-1 downto 0);
    signal arskd_valid     : std_logic;
    signal arskd_addr      : std_logic_vector (AXI_ADDR_WIDTH-ADDRLSB-1 downto 0);
    
    signal wskd_state      : unsigned (AXI_DATA_WIDTH-1 downto 0);
    signal wskd_set        : unsigned (AXI_DATA_WIDTH-1 downto 0);
    signal wskd_reset      : unsigned (AXI_DATA_WIDTH-1 downto 0);
    
    constant DEFAULT_STATE : unsigned (AXI_DATA_WIDTH-1 downto 0) := (0 => bool_to_logic(DEFAULT_PULSE_1), 1 => bool_to_logic(DEFAULT_PULSE_2), 2 => bool_to_logic(DEFAULT_TRIANGLE), 3 => bool_to_logic(DEFAULT_NOISE), 4 => bool_to_logic(DEFAULT_DMC), others => '0');
    signal state           : unsigned (AXI_DATA_WIDTH-1 downto 0) := DEFAULT_STATE;
    signal set_state       : unsigned (AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal reset_state     : unsigned (AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    
    signal ENABLE_PULSE_1  : boolean;
    signal ENABLE_PULSE_2  : boolean;
    signal ENABLE_TRIANGLE : boolean;
    signal ENABLE_NOISE    : boolean;
    signal ENABLE_DMC      : boolean;

    signal pulse1_message_last   : std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0');
    signal pulse2_message_last   : std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0');
    signal triangle_message_last : std_logic_vector(c_APU_TRIANGLE_MESSAGE - 1 downto 0) := (others => '0');
    signal noise_message_last    : std_logic_vector(c_APU_NOISE_MESSAGE - 1 downto 0) := (others => '0');
    signal dmc_message_last      : std_logic_vector(c_APU_DMC_MESSAGE - 1 downto 0) := (others => '0');
begin

    reset           <= not S_AXI_ARESETN;
    axi_write_ready <= awskd_valid and wskd_valid and ((not axi_bvalid) or S_AXI_BREADY);
    axi_read_ready  <= arskd_valid and ((not axi_read_valid) or S_AXI_RREADY);
    wskd_in         <= S_AXI_WDATA & S_AXI_WSTRB;
    wskd_data       <= wskd_out(wskd_out'length-1 downto S_AXI_WSTRB'length);
    wskd_strb       <= wskd_out(S_AXI_WSTRB'length-1 downto 0);
    
    wskd_state      <= apply_wstrb(state, wskd_data, wskd_strb);
	wskd_set        <= apply_wstrb(set_state, wskd_data, wskd_strb);
	wskd_reset      <= apply_wstrb(reset_state, wskd_data, wskd_strb);
    
    S_AXI_BVALID    <= axi_bvalid;
    S_AXI_BRESP     <= "00";
    S_AXI_RVALID    <= axi_read_valid;
    S_AXI_RDATA     <= axi_read_data;
    S_AXI_RRESP     <= "00";
    
    ENABLE_PULSE_1  <= state(0) = '1';
    ENABLE_PULSE_2  <= state(1) = '1';
    ENABLE_TRIANGLE <= state(2) = '1';
    ENABLE_NOISE    <= state(3) = '1';
    ENABLE_DMC      <= state(4) = '1';

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
    
    procWrite: process(S_AXI_ACLK) is
    begin
        if rising_edge(S_AXI_ACLK) then
            if reset = '1' then
                state <= DEFAULT_STATE;
                set_state   <= (others => '0');
                reset_state <= (others => '0');
            elsif axi_write_ready = '1' then
                case awskd_addr is
                    when "00" =>
                        state <= wskd_state;
                    when "01" =>
                        set_state <= wskd_set;
                        state <= state or wskd_set;
                    when "10" =>
                        reset_state <= wskd_reset;
                        state <= state and (not wskd_reset);
                    when others => null;
                end case;
            end if;
        end if;
    end process procWrite;
    
    procRead: process(S_AXI_ACLK) is
    begin
        if rising_edge(S_AXI_ACLK) then
            if (axi_read_valid = '0') or (S_AXI_RREADY = '1') then
                axi_read_data <= std_logic_vector(state);
            end if;
        end if;
    end process procRead;
    
    procTrigger: process(S_AXI_ACLK, S_AXI_ARESETN, CPU_Rst) is
    begin
        if (S_AXI_ARESETN = '0') or (CPU_Rst = '0') then
            FifoData              <= (others => '0');
            FifoWrite             <= '0';
            pulse1_message_last   <= (others => '0');
            pulse2_message_last   <= (others => '0');
            triangle_message_last <= (others => '0');
            noise_message_last    <= (others => '0');
            dmc_message_last      <= (others => '0');
        elsif rising_edge(S_AXI_ACLK) then
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
            elsif ENABLE_DMC and ((DMC_Message /= dmc_message_last) and ((DMC_Message(3) = '1') or (dmc_message_last(3) = '1'))) then
                FifoData(c_APU_DMC_MESSAGE - 1 downto 0) <= DMC_Message;
                FifoWrite <= '1';
                dmc_message_last <= DMC_Message;
            else
                FifoWrite <= '0';
            end if;
        end if;
    end process procTrigger;
    
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
