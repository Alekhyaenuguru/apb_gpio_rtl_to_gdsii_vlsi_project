`timescale 1ns/1ps

module tb_dff_check;

    logic clk;
    logic reset_b;
    logic d;
    wire  q;

    sky130_fd_sc_hd__dfrtp_1 dut (
        .CLK(clk),
        .D(d),
        .Q(q),
        .RESET_B(reset_b)
    );

    always #5 clk = ~clk;

    initial begin
        $monitor("time=%0t reset_b=%b d=%b q=%b",
                 $time, reset_b, d, q);

        clk     = 0;
        reset_b = 0;
        d       = 0;

        #20;

        reset_b = 1;
        d       = 1;

        #10;

        d = 0;

        #10;

        reset_b = 0;

        #10;

        $finish;
    end

endmodule
