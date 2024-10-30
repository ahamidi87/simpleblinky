//Die time_unit ist das Maß für die Verzögerungen und die Simulationszeit, während die time_precision angibt, wie die Verzögerungswerte gerundet werden, bevor sie in der Simulation verwendet werden.
// `timescale time_unit/time_precision

// VHDL
// entitiy blinky is
//    port (
//          clk_25mhz:  in std_logic;
//          led: out std_logic;
//         );
// end blinky;

module blinky(
    input clk_25mhz,
    output led
    );

// ab hier --> architecture

    // reg: signale innerhalb des modules
    // VHDL --> signal count: integer range 0 to 2^24 - 1
    reg [24:0] count = 0;

    // immer wenn eine steigende takt erkannt wird
    always @ (posedge(clk_25mhz)) count <= count + 1;

    assign led = count[24];
endmodule
