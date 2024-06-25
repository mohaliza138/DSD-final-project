library verilog;
use verilog.vl_types.all;
entity PARKING_CU is
    port(
        uni_parked_car  : out    integer;
        parked_car      : out    integer;
        uni_vacated_space: out    integer;
        vacated_space   : out    integer;
        uni_is_vacated_space: out    vl_logic;
        is_vacated_space: out    vl_logic;
        is_uni_car_entered: in     vl_logic;
        car_entered     : in     vl_logic;
        car_exited      : in     vl_logic;
        is_uni_car_exited: in     vl_logic;
        clk             : in     vl_logic
    );
end PARKING_CU;
