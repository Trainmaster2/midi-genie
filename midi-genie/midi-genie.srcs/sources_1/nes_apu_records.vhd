library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

package nes_apu_records is

    type t_APU_PULSE is record
        duty                : std_logic_vector(1 downto 0);
        length_counter_halt : std_logic;
        constant_volume     : std_logic;
        envelope            : unsigned(3 downto 0);
        volume              : unsigned(3 downto 0);
        sweep_enable        : std_logic;
        sweep_period        : unsigned(2 downto 0);
        sweep_negate        : std_logic;
        sweep_shift         : unsigned(2 downto 0);
        timer_load          : std_logic_vector(10 downto 0);
        length_counter_load : std_logic_vector(4 downto 0);
        timer               : unsigned(10 downto 0);
        length_counter      : unsigned(5 downto 0);
    end record t_APU_PULSE;

    constant c_APU_PULSE_VECTOR  : integer := 53;
    constant c_APU_PULSE_MESSAGE : integer := 19;
    constant c_APU_PULSE_INIT    : t_APU_PULSE := (duty => (others => '0'),
                                                   length_counter_halt => '0',
                                                   constant_volume => '0',
                                                   envelope => (others => '0'),
                                                   volume => (others => '1'),
                                                   sweep_enable => '0',
                                                   sweep_period => (others => '0'),
                                                   sweep_negate => '0',
                                                   sweep_shift => (others => '0'),
                                                   timer_load => (others => '0'),
                                                   length_counter_load => (others => '0'),
                                                   timer => (others => '0'),
                                                   length_counter => (others => '0'));

    function f_APU_PULSE_2_VECTOR (rec: t_APU_PULSE) return std_logic_vector;
    function f_VECTOR_2_APU_PULSE (vec: std_logic_vector(c_APU_PULSE_VECTOR - 1 downto 0)) return t_APU_PULSE;
    function f_APU_PULSE_2_MESSAGE (Channel: std_logic; rec: t_APU_PULSE; overflow_mute: std_logic) return std_logic_vector;
    function f_APU_PULSE_REG1 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE;
    function f_APU_PULSE_REG2 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE;
    function f_APU_PULSE_REG3 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE;
    function f_APU_PULSE_REG4 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0); enabled: std_logic) return t_APU_PULSE;


    type t_APU_TRIANGLE is record
        length_counter_halt : std_logic;
        linear_counter_load : std_logic_vector(6 downto 0);
        timer_load          : std_logic_vector(10 downto 0);
        length_counter      : unsigned(5 downto 0);
        linear_counter      : unsigned(6 downto 0);
        timer               : unsigned(10 downto 0);
    end record t_APU_TRIANGLE;

    constant c_APU_TRIANGLE_VECTOR  : integer := 43;
    constant c_APU_TRIANGLE_MESSAGE : integer := 15;
    constant c_APU_TRIANGLE_INIT    : t_APU_TRIANGLE := (length_counter_halt => '0',
                                                         linear_counter_load => (others => '0'),
                                                         timer_load => (others => '0'),
                                                         length_counter => (others => '0'),
                                                         linear_counter => (others => '0'),
                                                         timer => (others => '0'));

    function f_APU_TRIANGLE_2_VECTOR (rec: t_APU_TRIANGLE) return std_logic_vector;
    function f_VECTOR_2_APU_TRIANGLE (vec: std_logic_vector(c_APU_TRIANGLE_VECTOR - 1 downto 0)) return t_APU_TRIANGLE;
    function f_APU_TRIANGLE_2_MESSAGE (rec: t_APU_TRIANGLE) return std_logic_vector;
    function f_APU_TRIANGLE_REG1 (rec: t_APU_TRIANGLE; vec: std_logic_vector(7 downto 0)) return t_APU_TRIANGLE;
    function f_APU_TRIANGLE_REG3 (rec: t_APU_TRIANGLE; vec: std_logic_vector(7 downto 0)) return t_APU_TRIANGLE;
    function f_APU_TRIANGLE_REG4 (rec: t_APU_TRIANGLE; vec: std_logic_vector(7 downto 0); enabled: std_logic) return t_APU_TRIANGLE;


    type t_APU_NOISE is record
        length_counter_halt : std_logic;
        constant_volume     : std_logic;
        envelope            : unsigned(3 downto 0);
        volume              : unsigned(3 downto 0);
        noise_mode          : std_logic;
        noise_period        : std_logic_vector(3 downto 0);
        length_counter      : unsigned(5 downto 0);
        shift_reg           : std_logic_vector(14 downto 0);
        shift_reg_at_switch : std_logic_vector(14 downto 0);
    end record t_APU_NOISE;

    constant c_APU_NOISE_VECTOR  : integer := 51;
    constant c_APU_NOISE_MESSAGE : integer := 28;
    constant c_APU_NOISE_INIT    : t_APU_NOISE := (length_counter_halt => '0',
                                                   constant_volume => '0',
                                                   envelope => (others => '0'),
                                                   volume => (others => '0'),
                                                   noise_mode => '0',
                                                   noise_period => (others => '0'),
                                                   length_counter => (0 => '1', others => '0'),
                                                   shift_reg => (others => '0'),
                                                   shift_reg_at_switch => (others => '0'));

    function f_APU_NOISE_2_VECTOR (rec: t_APU_NOISE) return std_logic_vector;
    function f_VECTOR_2_APU_NOISE (vec: std_logic_vector(c_APU_NOISE_VECTOR - 1 downto 0)) return t_APU_NOISE;
    function f_APU_NOISE_2_MESSAGE (rec: t_APU_NOISE) return std_logic_vector;
    function f_APU_NOISE_REG1 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0)) return t_APU_NOISE;
    function f_APU_NOISE_REG3 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0)) return t_APU_NOISE;
    function f_APU_NOISE_REG4 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0); enabled: std_logic) return t_APU_NOISE;
    

    type t_APU_DMC is record
        irq_enable     : std_logic;
        dmc_loop       : std_logic;
        frequency      : std_logic_vector(3 downto 0);
        load_counter   : std_logic_vector(6 downto 0);
        sample_address : std_logic_vector(7 downto 0);
        sample_length  : std_logic_vector(7 downto 0);
    end record t_APU_DMC;

    constant c_APU_DMC_VECTOR  : integer := 29;
    constant c_APU_DMC_MESSAGE : integer := 3;
    constant c_APU_DMC_INIT    : t_APU_DMC := (irq_enable => '0',
                                               dmc_loop => '0',
                                               frequency => (others => '0'),
                                               load_counter => (others => '0'),
                                               sample_address => (others => '0'),
                                               sample_length => (others => '0'));

    function f_APU_DMC_2_VECTOR (rec: t_APU_DMC) return std_logic_vector;
    function f_VECTOR_2_APU_DMC (vec: std_logic_vector(c_APU_DMC_VECTOR - 1 downto 0)) return t_APU_DMC;
    function f_APU_DMC_2_MESSAGE (rec: t_APU_DMC) return std_logic_vector;
    function f_APU_DMC_REG1 (rec: t_APU_DMC; vec: std_logic_vector(7 downto 0)) return t_APU_DMC;
    function f_APU_DMC_REG2 (rec: t_APU_DMC; vec: std_logic_vector(7 downto 0)) return t_APU_DMC;
    function f_APU_DMC_REG3 (rec: t_APU_DMC; vec: std_logic_vector(7 downto 0)) return t_APU_DMC;
    function f_APU_DMC_REG4 (rec: t_APU_DMC; vec: std_logic_vector(7 downto 0)) return t_APU_DMC;
    

    type t_APU_STATUS is record
        dmc_interrupt   : std_logic;
        frame_interrupt : std_logic;
        dmc_active      : std_logic;
        noise_active    : std_logic;
        triangle_active : std_logic;
        pulse2_active   : std_logic;
        pulse1_active   : std_logic;
    end record t_APU_STATUS;

    constant c_APU_STATUS_VECTOR : integer := 7;
    constant c_APU_STATUS_INIT   : t_APU_STATUS := (dmc_interrupt => '0',
                                                    frame_interrupt => '0',
                                                    dmc_active => '0',
                                                    noise_active => '0',
                                                    triangle_active => '0',
                                                    pulse2_active => '0',
                                                    pulse1_active => '0');

    function f_APU_STATUS_2_VECTOR (rec: t_APU_STATUS) return std_logic_vector;
    function f_VECTOR_2_APU_STATUS (vec: std_logic_vector(c_APU_STATUS_VECTOR - 1 downto 0)) return t_APU_STATUS;
    function f_APU_STATUS_REG1 (rec: t_APU_STATUS; vec: std_logic_vector(7 downto 0)) return t_APU_STATUS;
    

    type t_APU_FRAME_COUNTER is record
        mode        : std_logic;
        irq_inhibit : std_logic;
    end record t_APU_FRAME_COUNTER;

    constant c_APU_FRAME_COUNTER_VECTOR : integer := 2;
    constant c_APU_FRAME_COUNTER_INIT   : t_APU_FRAME_COUNTER := (mode => '0',
                                                                  irq_inhibit => '0');

    function f_APU_FRAME_COUNTER_2_VECTOR (rec: t_APU_FRAME_COUNTER) return std_logic_vector;
    function f_VECTOR_2_APU_FRAME_COUNTER (vec: std_logic_vector(c_APU_FRAME_COUNTER_VECTOR - 1 downto 0)) return t_APU_FRAME_COUNTER;
    function f_APU_FRAME_COUNTER_REG1 (rec: t_APU_FRAME_COUNTER; vec: std_logic_vector(7 downto 0)) return t_APU_FRAME_COUNTER;
    
    function f_LENGTH_COUNTER (load:  std_logic_vector(4 downto 0)) return unsigned;

end package nes_apu_records;

package body nes_apu_records is

    function f_APU_PULSE_2_VECTOR (rec: t_APU_PULSE) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_PULSE_VECTOR - 1 downto 0);
    begin
        vec := rec.duty & rec.length_counter_halt & rec.constant_volume & std_logic_vector(rec.envelope) & std_logic_vector(rec.volume) & rec.sweep_enable & std_logic_vector(rec.sweep_period) & rec.sweep_negate & std_logic_vector(rec.sweep_shift) & rec.timer_load & rec.length_counter_load & std_logic_vector(rec.timer) & std_logic_vector(rec.length_counter) ;
        return vec;
    end;

    function f_VECTOR_2_APU_PULSE (vec: std_logic_vector(c_APU_PULSE_VECTOR - 1 downto 0)) return t_APU_PULSE is
        variable rec_out : t_APU_PULSE;
    begin
        rec_out.duty                := vec(52 downto 51);
        rec_out.length_counter_halt := vec(50);
        rec_out.constant_volume     := vec(49);
        rec_out.envelope            := unsigned(vec(48 downto 45));
        rec_out.volume              := unsigned(vec(44 downto 41));
        rec_out.sweep_enable        := vec(40);
        rec_out.sweep_period        := unsigned(vec(39 downto 37));
        rec_out.sweep_negate        := vec(36);
        rec_out.sweep_shift         := unsigned(vec(35 downto 33));
        rec_out.timer_load          := vec(32 downto 22);
        rec_out.length_counter_load := vec(21 downto 17);
        rec_out.timer               := unsigned(vec(16 downto 6));
        rec_out.length_counter      := unsigned(vec(5 downto 0));
        return rec_out;
    end;

    function f_APU_PULSE_2_MESSAGE (Channel: std_logic; rec: t_APU_PULSE; overflow_mute: std_logic) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0');
    begin
        vec(2 downto 0) := "00" & Channel;
        if (rec.length_counter > 0) and (rec.timer >= 8) and (overflow_mute = '0') then
            vec(3) := '1';
        end if;
        vec(14 downto 4)  := std_logic_vector(rec.timer);
        if (rec.constant_volume = '1') then
            vec(18 downto 15) := std_logic_vector(rec.envelope);
        else
            vec(18 downto 15) := std_logic_vector(rec.volume);
        end if;
        return vec;
    end;

    function f_APU_PULSE_REG1 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE is
        variable rec_out : t_APU_PULSE;
    begin
        rec_out := rec;
        rec_out.duty                := vec(7 downto 6);
        rec_out.length_counter_halt := vec(5);
        rec_out.constant_volume     := vec(4);
        rec_out.envelope            := unsigned(vec(3 downto 0));
        return rec_out;
    end;

    function f_APU_PULSE_REG2 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE is
        variable rec_out : t_APU_PULSE;
    begin
        rec_out := rec;
        rec_out.sweep_enable := vec(7);
        rec_out.sweep_period := unsigned(vec(6 downto 4));
        rec_out.sweep_negate := vec(3);
        rec_out.sweep_shift  := unsigned(vec(2 downto 0));
        return rec_out;
    end;

    function f_APU_PULSE_REG3 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE is
        variable rec_out : t_APU_PULSE;
    begin
        rec_out := rec;
        rec_out.timer_load(7 downto 0) := vec;
        rec_out.timer(7 downto 0)      := unsigned(vec);
        return rec_out;
    end;

    function f_APU_PULSE_REG4 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0); enabled: std_logic) return t_APU_PULSE is
        variable rec_out : t_APU_PULSE;
    begin
        rec_out := rec;
        rec_out.length_counter_load     := vec(7 downto 3);
        if (enabled = '0') then
            rec_out.length_counter      := (others => '0');
        else
            rec_out.length_counter      := f_LENGTH_COUNTER(vec(7 downto 3));
        end if;
        rec_out.timer_load(10 downto 8) := vec(2 downto 0);
        rec_out.timer(10 downto 8)      := unsigned(vec(2 downto 0));
        return rec_out;
    end;
    

    function f_APU_TRIANGLE_2_VECTOR (rec: t_APU_TRIANGLE) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_TRIANGLE_VECTOR - 1 downto 0);
    begin
        vec := rec.length_counter_halt & rec.linear_counter_load & rec.timer_load & std_logic_vector(rec.length_counter) & std_logic_vector(rec.linear_counter) & std_logic_vector(rec.timer);
        return vec;
    end;

    function f_VECTOR_2_APU_TRIANGLE (vec: std_logic_vector(c_APU_TRIANGLE_VECTOR - 1 downto 0)) return t_APU_TRIANGLE is
        variable rec_out : t_APU_TRIANGLE;
    begin
        rec_out.length_counter_halt := vec(42);
        rec_out.linear_counter_load := vec(41 downto 35);
        rec_out.timer_load          := vec(34 downto 24);
        rec_out.length_counter      := unsigned(vec(23 downto 18));
        rec_out.linear_counter      := unsigned(vec(17 downto 11));
        rec_out.timer               := unsigned(vec(10 downto 0));
        return rec_out;
    end;

    function f_APU_TRIANGLE_2_MESSAGE (rec: t_APU_TRIANGLE) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_TRIANGLE_MESSAGE - 1 downto 0) := (others => '0');
    begin
        vec(2 downto 0) := "010";
        if (rec.length_counter > 0) and (rec.linear_counter > 0) then
            vec(3) := '1';
        end if;
        vec(14 downto 4)  := std_logic_vector(rec.timer);
        return vec;
    end;

    function f_APU_TRIANGLE_REG1 (rec: t_APU_TRIANGLE; vec: std_logic_vector(7 downto 0)) return t_APU_TRIANGLE is
        variable rec_out : t_APU_TRIANGLE;
    begin
        rec_out := rec;
        rec_out.length_counter_halt := vec(7);
        rec_out.linear_counter_load := vec(6 downto 0);
        return rec_out;
    end;

    function f_APU_TRIANGLE_REG3 (rec: t_APU_TRIANGLE; vec: std_logic_vector(7 downto 0)) return t_APU_TRIANGLE is
        variable rec_out : t_APU_TRIANGLE;
    begin
        rec_out := rec;
        rec_out.timer(7 downto 0) := unsigned(vec);
        return rec_out;
    end;

    function f_APU_TRIANGLE_REG4 (rec: t_APU_TRIANGLE; vec: std_logic_vector(7 downto 0); enabled: std_logic) return t_APU_TRIANGLE is
        variable rec_out : t_APU_TRIANGLE;
    begin
        rec_out := rec;
        if (enabled = '0') then
            rec_out.length_counter := (others => '0');
        else
            rec_out.length_counter := f_LENGTH_COUNTER(vec(7 downto 3));
        end if;
        rec_out.timer(10 downto 8) := unsigned(vec(2 downto 0));
        return rec_out;
    end;
    

    function f_APU_NOISE_2_VECTOR (rec: t_APU_NOISE) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_NOISE_VECTOR - 1 downto 0);
    begin
        vec := rec.length_counter_halt & rec.constant_volume & std_logic_vector(rec.envelope) & std_logic_vector(rec.volume) & rec.noise_mode & rec.noise_period & std_logic_vector(rec.length_counter) & rec.shift_reg & rec.shift_reg_at_switch;
        return vec;
    end;

    function f_VECTOR_2_APU_NOISE (vec: std_logic_vector(c_APU_NOISE_VECTOR - 1 downto 0)) return t_APU_NOISE is
        variable rec_out : t_APU_NOISE;
    begin
        rec_out.length_counter_halt := vec(50);
        rec_out.constant_volume     := vec(49);
        rec_out.envelope            := unsigned(vec(48 downto 45));
        rec_out.volume              := unsigned(vec(44 downto 41));
        rec_out.noise_mode          := vec(40);
        rec_out.noise_period        := vec(39 downto 36);
        rec_out.length_counter      := unsigned(vec(35 downto 30));
        rec_out.shift_reg           := vec(29 downto 15);
        rec_out.shift_reg_at_switch := vec(14 downto 0);
        return rec_out;
    end;

    function f_APU_NOISE_2_MESSAGE (rec: t_APU_NOISE) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_NOISE_MESSAGE - 1 downto 0) := (others => '0');
    begin
        vec(2 downto 0) := "011";
        if (rec.length_counter > 0) then
            vec(3) := '1';
        end if;
        vec(4)            := rec.noise_mode;
        vec(8 downto 5)   := rec.noise_period;
        vec(23 downto 9)  := rec.shift_reg_at_switch;
        if (rec.constant_volume = '1') then
            vec(27 downto 24) := std_logic_vector(rec.envelope);
        else
            vec(27 downto 24) := std_logic_vector(rec.volume);
        end if;
        return vec;
    end;

    function f_APU_NOISE_REG1 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0)) return t_APU_NOISE is
        variable rec_out : t_APU_NOISE;
    begin
        rec_out := rec;
        rec_out.length_counter_halt := vec(5);
        rec_out.constant_volume     := vec(4);
        rec_out.envelope            := unsigned(vec(3 downto 0));
        return rec_out;
    end;

    function f_APU_NOISE_REG3 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0)) return t_APU_NOISE is
        variable rec_out : t_APU_NOISE;
    begin
        rec_out := rec;
        rec_out.noise_mode   := vec(7);
        rec_out.noise_period := vec(3 downto 0);
        if (vec(7) /= rec.noise_mode) then
            rec_out.shift_reg_at_switch := rec.shift_reg;
        end if;
        return rec_out;
    end;

    function f_APU_NOISE_REG4 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0); enabled: std_logic) return t_APU_NOISE is
        variable rec_out : t_APU_NOISE;
    begin
        rec_out := rec;
        if (enabled = '0') then
            rec_out.length_counter := (others => '0');
        else
            rec_out.length_counter := f_LENGTH_COUNTER(vec(7 downto 3));
        end if;
        return rec_out;
    end;
    

    function f_APU_DMC_2_VECTOR (rec: t_APU_DMC) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_DMC_VECTOR - 1 downto 0);
    begin
        vec := rec.irq_enable & rec.dmc_loop & rec.frequency & rec.load_counter & rec.sample_address & rec.sample_length;
        return vec;
    end;

    function f_VECTOR_2_APU_DMC (vec: std_logic_vector(c_APU_DMC_VECTOR - 1 downto 0)) return t_APU_DMC is
        variable rec_out : t_APU_DMC;
    begin
        rec_out.irq_enable     := vec(28);
        rec_out.dmc_loop       := vec(27);
        rec_out.frequency      := vec(26 downto 23);
        rec_out.load_counter   := vec(22 downto 16);
        rec_out.sample_address := vec(15 downto 8);
        rec_out.sample_length  := vec(7 downto 0);
        return rec_out;
    end;

    function f_APU_DMC_2_MESSAGE (rec: t_APU_DMC) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_DMC_MESSAGE - 1 downto 0) := (others => '0');
    begin
        vec(2 downto 0) := "100";
        return vec;
    end;

    function f_APU_DMC_REG1 (rec: t_APU_DMC; vec: std_logic_vector(7 downto 0)) return t_APU_DMC is
        variable rec_out : t_APU_DMC;
    begin
        rec_out := rec;
        rec_out.irq_enable := vec(7);
        rec_out.dmc_loop   := vec(6);
        rec_out.frequency  := vec(3 downto 0);
        return rec_out;
    end;

    function f_APU_DMC_REG2 (rec: t_APU_DMC; vec: std_logic_vector(7 downto 0)) return t_APU_DMC is
        variable rec_out : t_APU_DMC;
    begin
        rec_out := rec;
        rec_out.load_counter := vec(6 downto 0);
        return rec_out;
    end;

    function f_APU_DMC_REG3 (rec: t_APU_DMC; vec: std_logic_vector(7 downto 0)) return t_APU_DMC is
        variable rec_out : t_APU_DMC;
    begin
        rec_out := rec;
        rec_out.sample_address := vec;
        return rec_out;
    end;

    function f_APU_DMC_REG4 (rec: t_APU_DMC; vec: std_logic_vector(7 downto 0)) return t_APU_DMC is
        variable rec_out : t_APU_DMC;
    begin
        rec_out := rec;
        rec_out.sample_length := vec;
        return rec_out;
    end;
    

    function f_APU_STATUS_2_VECTOR (rec: t_APU_STATUS) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_STATUS_VECTOR - 1 downto 0);
    begin
        vec := rec.dmc_interrupt & rec.frame_interrupt & rec.dmc_active & rec.noise_active & rec.triangle_active & rec.pulse2_active & rec.pulse1_active;
        return vec;
    end;

    function f_VECTOR_2_APU_STATUS (vec: std_logic_vector(c_APU_STATUS_VECTOR - 1 downto 0)) return t_APU_STATUS is
        variable rec_out : t_APU_STATUS;
    begin
        rec_out.dmc_interrupt   := vec(6);
        rec_out.frame_interrupt := vec(5);
        rec_out.dmc_active      := vec(4);
        rec_out.noise_active    := vec(3);
        rec_out.triangle_active := vec(2);
        rec_out.pulse2_active   := vec(1);
        rec_out.pulse1_active   := vec(0);
        return rec_out;
    end;

    function f_APU_STATUS_REG1 (rec: t_APU_STATUS; vec: std_logic_vector(7 downto 0)) return t_APU_STATUS is
        variable rec_out : t_APU_STATUS;
    begin
        rec_out := rec;
        rec_out.dmc_active      := vec(4);
        rec_out.noise_active    := vec(3);
        rec_out.triangle_active := vec(2);
        rec_out.pulse2_active   := vec(1);
        rec_out.pulse1_active   := vec(0);
        return rec_out;
    end;
    

    function f_APU_FRAME_COUNTER_2_VECTOR (rec: t_APU_FRAME_COUNTER) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_FRAME_COUNTER_VECTOR - 1 downto 0);
    begin
        vec := rec.mode & rec.irq_inhibit;
        return vec;
    end;

    function f_VECTOR_2_APU_FRAME_COUNTER (vec: std_logic_vector(c_APU_FRAME_COUNTER_VECTOR - 1 downto 0)) return t_APU_FRAME_COUNTER is
        variable rec_out : t_APU_FRAME_COUNTER;
    begin
        rec_out.mode        := vec(1);
        rec_out.irq_inhibit := vec(0);
        return rec_out;
    end;

    function f_APU_FRAME_COUNTER_REG1 (rec: t_APU_FRAME_COUNTER; vec: std_logic_vector(7 downto 0)) return t_APU_FRAME_COUNTER is
        variable rec_out : t_APU_FRAME_COUNTER;
    begin
        rec_out := rec;
        rec_out.mode        := vec(7);
        rec_out.irq_inhibit := vec(6);
        return rec_out;
    end;

    function f_LENGTH_COUNTER (load:  std_logic_vector(4 downto 0)) return unsigned is
    begin
        case (load) is
            when x"00" => return to_unsigned(10, 6) + 1;
            when x"01" => return to_unsigned(254, 6) + 1;
            when x"02" => return to_unsigned(20, 6) + 1;
            when x"03" => return to_unsigned(2, 6) + 1;
            when x"04" => return to_unsigned(40, 6) + 1;
            when x"05" => return to_unsigned(4, 6) + 1;
            when x"06" => return to_unsigned(80, 6) + 1;
            when x"07" => return to_unsigned(6, 6) + 1;
            when x"08" => return to_unsigned(160, 6) + 1;
            when x"09" => return to_unsigned(8, 6) + 1;
            when x"0A" => return to_unsigned(60, 6) + 1;
            when x"0B" => return to_unsigned(10, 6) + 1;
            when x"0C" => return to_unsigned(14, 6) + 1;
            when x"0D" => return to_unsigned(12, 6) + 1;
            when x"0E" => return to_unsigned(26, 6) + 1;
            when x"0F" => return to_unsigned(14, 6) + 1;
            when x"10" => return to_unsigned(12, 6) + 1;
            when x"11" => return to_unsigned(16, 6) + 1;
            when x"12" => return to_unsigned(24, 6) + 1;
            when x"13" => return to_unsigned(18, 6) + 1;
            when x"14" => return to_unsigned(48, 6) + 1;
            when x"15" => return to_unsigned(20, 6) + 1;
            when x"16" => return to_unsigned(96, 6) + 1;
            when x"17" => return to_unsigned(22, 6) + 1;
            when x"18" => return to_unsigned(192, 6) + 1;
            when x"19" => return to_unsigned(24, 6) + 1;
            when x"1A" => return to_unsigned(72, 6) + 1;
            when x"1B" => return to_unsigned(26, 6) + 1;
            when x"1C" => return to_unsigned(16, 6) + 1;
            when x"1D" => return to_unsigned(28, 6) + 1;
            when x"1E" => return to_unsigned(32, 6) + 1;
            when x"1F" => return to_unsigned(30, 6) + 1;
            when others => null;
        end case;
    end;

end package body;