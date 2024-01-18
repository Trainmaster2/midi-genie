library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

package nes_apu_records is

    type t_APU_PULSE is record
        duty                : std_logic_vector(1 downto 0);
        length_counter_halt : std_logic;
        constant_volume     : std_logic;
        volume              : std_logic_vector(3 downto 0);
        sweep_enable        : std_logic;
        sweep_period        : std_logic_vector(2 downto 0);
        sweep_negate        : std_logic;
        sweep_shift         : std_logic_vector(2 downto 0);
        timer_load          : std_logic_vector(10 downto 0);
        length_counter      : std_logic_vector(4 downto 0);
        timer               : std_logic_vector(10 downto 0);
    end record t_APU_PULSE;

    constant c_APU_PULSE_VECTOR  : integer := 43;
    constant c_APU_PULSE_MESSAGE : integer := 19;
    constant c_APU_PULSE_INIT    : t_APU_PULSE := (duty => (others => '0'),
                                                   length_counter_halt => '0',
                                                   constant_volume => '0',
                                                   volume => (others => '0'),
                                                   sweep_enable => '0',
                                                   sweep_period => (others => '0'),
                                                   sweep_negate => '0',
                                                   sweep_shift => (others => '0'),
                                                   timer_load => (others => '0'),
                                                   length_counter => (others => '0'),
                                                   timer => (others => '0'));

    function f_APU_PULSE_2_VECTOR (rec: t_APU_PULSE) return std_logic_vector;
    function f_VECTOR_2_APU_PULSE (vec: std_logic_vector(c_APU_PULSE_VECTOR - 1 downto 0)) return t_APU_PULSE;
    function f_APU_PULSE_2_MESSAGE (Channel: std_logic; PulseOn: std_logic; rec: t_APU_PULSE) return std_logic_vector;
    function f_APU_PULSE_REG1 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE;
    function f_APU_PULSE_REG2 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE;
    function f_APU_PULSE_REG3 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE;
    function f_APU_PULSE_REG4 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE;


    type t_APU_TRIANGLE is record
        length_counter_halt : std_logic;
        linear_counter_load : std_logic_vector(6 downto 0);
        timer_load          : std_logic_vector(10 downto 0);
        length_counter      : std_logic_vector(4 downto 0);
        linear_counter      : std_logic_vector(6 downto 0);
        timer               : std_logic_vector(10 downto 0);
    end record t_APU_TRIANGLE;

    constant c_APU_TRIANGLE_VECTOR : integer := 42;
    constant c_APU_TRIANGLE_INIT   : t_APU_TRIANGLE := (length_counter_halt => '0',
                                                        linear_counter_load => (others => '0'),
                                                        timer_load => (others => '0'),
                                                        length_counter => (others => '0'),
                                                        linear_counter => (others => '0'),
                                                        timer => (others => '0'));

    function f_APU_TRIANGLE_2_VECTOR (rec: t_APU_TRIANGLE) return std_logic_vector;
    function f_VECTOR_2_APU_TRIANGLE (vec: std_logic_vector(c_APU_TRIANGLE_VECTOR - 1 downto 0)) return t_APU_TRIANGLE;
    function f_APU_TRIANGLE_REG1 (rec: t_APU_TRIANGLE; vec: std_logic_vector(7 downto 0)) return t_APU_TRIANGLE;
    function f_APU_TRIANGLE_REG3 (rec: t_APU_TRIANGLE; vec: std_logic_vector(7 downto 0)) return t_APU_TRIANGLE;
    function f_APU_TRIANGLE_REG4 (rec: t_APU_TRIANGLE; vec: std_logic_vector(7 downto 0)) return t_APU_TRIANGLE;


    type t_APU_NOISE is record
        length_counter_halt : std_logic;
        constant_volume     : std_logic;
        volume              : std_logic_vector(3 downto 0);
        loop_noise          : std_logic;
        noise_period        : std_logic_vector(3 downto 0);
        length_counter      : std_logic_vector(4 downto 0);
    end record t_APU_NOISE;

    constant c_APU_NOISE_VECTOR : integer := 16;
    constant c_APU_NOISE_INIT   : t_APU_NOISE := (length_counter_halt => '0',
                                                  constant_volume => '0',
                                                  volume => (others => '0'),
                                                  loop_noise => '0',
                                                  noise_period => (others => '0'),
                                                  length_counter => (others => '0'));

    function f_APU_NOISE_2_VECTOR (rec: t_APU_NOISE) return std_logic_vector;
    function f_VECTOR_2_APU_NOISE (vec: std_logic_vector(c_APU_NOISE_VECTOR - 1 downto 0)) return t_APU_NOISE;
    function f_APU_NOISE_REG1 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0)) return t_APU_NOISE;
    function f_APU_NOISE_REG3 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0)) return t_APU_NOISE;
    function f_APU_NOISE_REG4 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0)) return t_APU_NOISE;
    

    type t_APU_DMC is record
        irq_enable     : std_logic;
        dmc_loop       : std_logic;
        frequency      : std_logic_vector(3 downto 0);
        load_counter   : std_logic_vector(6 downto 0);
        sample_address : std_logic_vector(7 downto 0);
        sample_length  : std_logic_vector(7 downto 0);
    end record t_APU_DMC;

    constant c_APU_DMC_VECTOR : integer := 29;
    constant c_APU_DMC_INIT   : t_APU_DMC := (irq_enable => '0',
                                              dmc_loop => '0',
                                              frequency => (others => '0'),
                                              load_counter => (others => '0'),
                                              sample_address => (others => '0'),
                                              sample_length => (others => '0'));

    function f_APU_DMC_2_VECTOR (rec: t_APU_DMC) return std_logic_vector;
    function f_VECTOR_2_APU_DMC (vec: std_logic_vector(c_APU_DMC_VECTOR - 1 downto 0)) return t_APU_DMC;
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

end package nes_apu_records;

package body nes_apu_records is

    function f_APU_PULSE_2_VECTOR (rec: t_APU_PULSE) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_PULSE_VECTOR - 1 downto 0);
    begin
        vec := rec.duty & rec.length_counter_halt & rec.constant_volume & rec.volume & rec.sweep_enable & rec.sweep_period & rec.sweep_negate & rec.sweep_shift & rec.timer_load & rec.length_counter & rec.timer;
        return vec;
    end;

    function f_VECTOR_2_APU_PULSE (vec: std_logic_vector(c_APU_PULSE_VECTOR - 1 downto 0)) return t_APU_PULSE is
        variable rec_out : t_APU_PULSE;
    begin
        rec_out.duty                := vec(42 downto 41);
        rec_out.length_counter_halt := vec(40);
        rec_out.constant_volume     := vec(39);
        rec_out.volume              := vec(38 downto 35);
        rec_out.sweep_enable        := vec(34);
        rec_out.sweep_period        := vec(33 downto 31);
        rec_out.sweep_negate        := vec(30);
        rec_out.sweep_shift         := vec(29 downto 27);
        rec_out.timer_load          := vec(26 downto 16);
        rec_out.length_counter      := vec(15 downto 11);
        rec_out.timer               := vec(10 downto 0);
        return rec_out;
    end;

    function f_APU_PULSE_2_MESSAGE (Channel: std_logic; PulseOn: std_logic; rec: t_APU_PULSE) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_PULSE_MESSAGE - 1 downto 0) := (others => '0');
    begin
        vec(0) := Channel;
        vec(3) := PulseOn;
        if (PulseOn = '1') then
            vec(14 downto 4)  := rec.timer_load;
            vec(18 downto 15) := rec.volume;
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
        rec_out.volume              := vec(3 downto 0);
        return rec_out;
    end;

    function f_APU_PULSE_REG2 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE is
        variable rec_out : t_APU_PULSE;
    begin
        rec_out := rec;
        rec_out.sweep_enable := vec(7);
        rec_out.sweep_period := vec(6 downto 4);
        rec_out.sweep_negate := vec(3);
        rec_out.sweep_shift  := vec(2 downto 0);
        return rec_out;
    end;

    function f_APU_PULSE_REG3 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE is
        variable rec_out : t_APU_PULSE;
    begin
        rec_out := rec;
        rec_out.timer_load(7 downto 0) := vec;
        return rec_out;
    end;

    function f_APU_PULSE_REG4 (rec: t_APU_PULSE; vec: std_logic_vector(7 downto 0)) return t_APU_PULSE is
        variable rec_out : t_APU_PULSE;
    begin
        rec_out := rec;
        rec_out.length_counter          := vec(7 downto 3);
        rec_out.timer_load(10 downto 8) := vec(2 downto 0);
        return rec_out;
    end;
    

    function f_APU_TRIANGLE_2_VECTOR (rec: t_APU_TRIANGLE) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_TRIANGLE_VECTOR - 1 downto 0);
    begin
        vec := rec.length_counter_halt & rec.linear_counter_load & rec.timer_load & rec.length_counter & rec.linear_counter & rec.timer;
        return vec;
    end;

    function f_VECTOR_2_APU_TRIANGLE (vec: std_logic_vector(c_APU_TRIANGLE_VECTOR - 1 downto 0)) return t_APU_TRIANGLE is
        variable rec_out : t_APU_TRIANGLE;
    begin
        rec_out.length_counter_halt := vec(41);
        rec_out.linear_counter_load := vec(40 downto 34);
        rec_out.timer_load          := vec(33 downto 23);
        rec_out.length_counter      := vec(22 downto 18);
        rec_out.linear_counter      := vec(17 downto 11);
        rec_out.timer               := vec(10 downto 0);
        return rec_out;
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
        rec_out.timer_load(7 downto 0) := vec;
        return rec_out;
    end;

    function f_APU_TRIANGLE_REG4 (rec: t_APU_TRIANGLE; vec: std_logic_vector(7 downto 0)) return t_APU_TRIANGLE is
        variable rec_out : t_APU_TRIANGLE;
    begin
        rec_out := rec;
        rec_out.length_counter          := vec(7 downto 3);
        rec_out.timer_load(10 downto 8) := vec(2 downto 0);
        rec_out.linear_counter          := rec.linear_counter_load;
        return rec_out;
    end;
    

    function f_APU_NOISE_2_VECTOR (rec: t_APU_NOISE) return std_logic_vector is
        variable vec : std_logic_vector(c_APU_NOISE_VECTOR - 1 downto 0);
    begin
        vec := rec.length_counter_halt & rec.constant_volume & rec.volume & rec.loop_noise & rec.noise_period & rec.length_counter;
        return vec;
    end;

    function f_VECTOR_2_APU_NOISE (vec: std_logic_vector(c_APU_NOISE_VECTOR - 1 downto 0)) return t_APU_NOISE is
        variable rec_out : t_APU_NOISE;
    begin
        rec_out.length_counter_halt := vec(15);
        rec_out.constant_volume     := vec(14);
        rec_out.volume              := vec(13 downto 10);
        rec_out.loop_noise          := vec(9);
        rec_out.noise_period        := vec(8 downto 5);
        rec_out.length_counter      := vec(4 downto 0);
        return rec_out;
    end;

    function f_APU_NOISE_REG1 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0)) return t_APU_NOISE is
        variable rec_out : t_APU_NOISE;
    begin
        rec_out := rec;
        rec_out.length_counter_halt := vec(5);
        rec_out.constant_volume     := vec(4);
        rec_out.volume              := vec(3 downto 0);
        return rec_out;
    end;

    function f_APU_NOISE_REG3 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0)) return t_APU_NOISE is
        variable rec_out : t_APU_NOISE;
    begin
        rec_out := rec;
        rec_out.loop_noise   := vec(7);
        rec_out.noise_period := vec(3 downto 0);
        return rec_out;
    end;

    function f_APU_NOISE_REG4 (rec: t_APU_NOISE; vec: std_logic_vector(7 downto 0)) return t_APU_NOISE is
        variable rec_out : t_APU_NOISE;
    begin
        rec_out := rec;
        rec_out.length_counter     := vec(7 downto 3);
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

end package body;