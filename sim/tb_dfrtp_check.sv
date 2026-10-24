`timescale 1ns/1ps

module tb_dfrtp_check;

    reg  d;
    reg  clk;
    reg  reset_b;
    wire q;

    sky130_fd_sc_hd__dfrtp dut (
        .Q(q),
        .CLK(clk),
        .D(d),
        .RESET_B(reset_b)
    );

    always #5 clk = ~clk;

    initial begin
        $monitor("time=%0t reset_b=%b clk=%b d=%b q=%b",
                 $time, reset_b, clk, d, q);

        clk     = 0;
        reset_b = 0;
        d       = 0;

        #20;

        reset_b = 1;
        d = 1;

        #10;

        d = 0;

        #10;

        reset_b = 0;

        #10;

        $finish;
    end

endmodule
