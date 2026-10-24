`timescale 1ns/1ps

module tb_udp_check;

    reg  d;
    reg  clk;
    reg  reset;
    wire q;

    sky130_fd_sc_hd__udp_dff$PR dut (
        q,
        d,
        clk,
        reset
    );

    initial begin
        $monitor("time=%0t reset=%b clk=%b d=%b q=%b",
                 $time, reset, clk, d, q);

        d     = 0;
        clk   = 0;
        reset = 1;

        #10;

        reset = 0;
        d = 1;

        #5;
        clk = 1;

        #5;
        clk = 0;

        #5;
        d = 0;

        #5;
        clk = 1;

        #5;
        clk = 0;

        #5;
        reset = 1;

        #5;
        $finish;
    end

endmodule
