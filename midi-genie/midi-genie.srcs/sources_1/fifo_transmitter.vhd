library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

entity fifo_transmitter is
    port (
        Clk       : in  std_logic;
        Reset     : in  std_logic;
        FifoData  : in  std_logic_vector (25 downto 0) := (others => '0');
        FifoEmpty : in  std_logic := '1';
        FifoRead  : out std_logic := '0';
        Midi      : out std_logic := '1'
    );
end fifo_transmitter;

architecture Rtl of fifo_transmitter is
    constant MIDI_COUNTER : natural := 3200;
    type fifo_record is record
        numbytes : unsigned(1 downto 0);
        byte0    : std_logic_vector(7 downto 0);
        byte1    : std_logic_vector(7 downto 0);
        byte2    : std_logic_vector(7 downto 0);
    end record fifo_record;
    signal read_buf  : std_logic := '0';
    signal read_fifo : std_logic := '0';
begin

    FifoRead <= read_buf;

    procTransmit: process(Clk) is
        variable counter  : natural range 0 to MIDI_COUNTER := 0;
        variable midi_rec : fifo_record;
        variable running  : std_logic := '0';
        variable bytenum  : natural range 0 to 2 := 0;
        variable bitnum   : natural range 0 to 9 := 0;
    begin
        if Reset = '0' then
            read_buf <= '0';
            Midi <= '1';
            counter := 0;
            running := '0';
            bytenum := 0;
            bitnum := 0;
        elsif rising_edge(Clk) then
            if running = '1' then
                counter := counter + 1;
                if counter = MIDI_COUNTER then
                    counter := 0;
                    case bitnum is
                        when 0 =>
                            Midi <= '0';
                            bitnum := 1;
                        when 9 =>
                            Midi <= '1';
                            bitnum := 0;
                            if bytenum = midi_rec.numbytes then
                                running := '0';
                                bytenum := 0;
                                if FifoEmpty = '0' then
                                    read_buf <= '1';
                                end if;
                            else
                                bytenum := bytenum + 1;
                            end if;
                       when others =>
                            case bytenum is
                                when 0 => Midi <= midi_rec.byte0(bitnum-1);
                                when 1 => Midi <= midi_rec.byte1(bitnum-1);
                                when 2 => Midi <= midi_rec.byte2(bitnum-1);
                            end case;
                            bitnum := bitnum + 1;
                    end case;
                end if;
            elsif read_buf = '1' then
                read_buf <= '0';
                read_fifo <= '1';
            elsif read_fifo = '1' then
                read_fifo <= '0';
                midi_rec.numbytes := unsigned(FifoData(25 downto 24));
                midi_rec.byte0 := FifoData(23 downto 16);
                midi_rec.byte1 := FifoData(15 downto 8);
                midi_rec.byte2 := FifoData(7 downto 0);
                if midi_rec.numbytes > 0 then
                    running := '1';
                    counter := 1;
                    bitnum := 1;
                    Midi <= '0';
                elsif FifoEmpty = '0' then
                    read_buf <= '1';
                end if;
            elsif FifoEmpty = '0' then
                read_buf <= '1';
            end if;
        end if;
    end process procTransmit;

end Rtl;
