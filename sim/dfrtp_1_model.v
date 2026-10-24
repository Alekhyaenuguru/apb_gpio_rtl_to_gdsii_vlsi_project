`timescale 1ns/1ps

module sky130_fd_sc_hd__dfrtp_1 (
    output Q,
    input  CLK,
    input  D,
    input  RESET_B
);

    reg q_reg;

    always @(posedge CLK or negedge RESET_B) begin
        if (!RESET_B)
            q_reg <= 1'b0;
        else
            q_reg <= D;
    end

    assign Q = q_reg;

endmodule
