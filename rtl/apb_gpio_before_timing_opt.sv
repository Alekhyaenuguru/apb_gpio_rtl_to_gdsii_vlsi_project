module apb_gpio #(
    parameter GPIO_WIDTH = 8
)(
    input  logic                   PCLK,
    input  logic                   PRESETn,

    input  logic                   PSEL,
    input  logic                   PENABLE,
    input  logic                   PWRITE,

    input  logic [7:0]             PADDR,
    input  logic [31:0]            PWDATA,

    output logic [31:0]            PRDATA,
    output logic                   PREADY,
    output logic                   PSLVERR,

    input  logic [GPIO_WIDTH-1:0]  gpio_in,
    output logic [GPIO_WIDTH-1:0]  gpio_out,
    output logic [GPIO_WIDTH-1:0]  gpio_oe
);

    // GPIO registers
    logic [GPIO_WIDTH-1:0] gpio_data;
    logic [GPIO_WIDTH-1:0] gpio_dir;

    // ------------------------------------------------------------
    // Sequential logic
    // ------------------------------------------------------------
    always_ff @(posedge PCLK or negedge PRESETn) begin

        if (!PRESETn) begin
            gpio_data <= '0;
            gpio_dir  <= '0;
        end

        else begin

            if (PSEL && PENABLE && PWRITE) begin

                case (PADDR[5:2])

                    4'h0:
                        gpio_data <= PWDATA[GPIO_WIDTH-1:0];

                    4'h1:
                        gpio_dir <= PWDATA[GPIO_WIDTH-1:0];

                    default: begin
                    end

                endcase

            end
        end
    end

    // ------------------------------------------------------------
    // APB read logic
    // ------------------------------------------------------------
    always_comb begin

        PRDATA = 32'h00000000;

        if (PSEL && PENABLE && !PWRITE) begin

            case (PADDR[5:2])

                // GPIO_DATA
                4'h0:
                    PRDATA[GPIO_WIDTH-1:0] = gpio_data;

                // GPIO_DIR
                4'h1:
                    PRDATA[GPIO_WIDTH-1:0] = gpio_dir;

                // GPIO_STATUS
                4'h2:
                    PRDATA[GPIO_WIDTH-1:0] = gpio_in;

                // GPIO_ID
                4'h3:
                    PRDATA = 32'h4750494F;

                default:
                    PRDATA = 32'h00000000;

            endcase
        end
    end

    // GPIO outputs
    assign gpio_out = gpio_data;

    assign gpio_oe = gpio_dir;

    // APB response
    assign PREADY  = PSEL && PENABLE;

    assign PSLVERR = 1'b0;

endmodule
