`timescale 1ns/1ps

module tb_apb_gpio;

    // ------------------------------------------------------------
    // Clock and reset
    // ------------------------------------------------------------
    logic PCLK;
    logic PRESETn;

    // ------------------------------------------------------------
    // APB signals
    // ------------------------------------------------------------
    logic        PSEL;
    logic        PENABLE;
    logic        PWRITE;

    logic [7:0]  PADDR;
    logic [31:0] PWDATA;

    logic [31:0] PRDATA;
    logic        PREADY;
    logic        PSLVERR;

    // ------------------------------------------------------------
    // GPIO signals
    // ------------------------------------------------------------
    logic [7:0] gpio_in;
    logic [7:0] gpio_out;
    logic [7:0] gpio_oe;

    // ------------------------------------------------------------
    // DUT
    // ------------------------------------------------------------
    apb_gpio dut (
        .PCLK    (PCLK),
        .PRESETn (PRESETn),

        .PSEL    (PSEL),
        .PENABLE (PENABLE),
        .PWRITE  (PWRITE),

        .PADDR   (PADDR),
        .PWDATA  (PWDATA),

        .PRDATA  (PRDATA),
        .PREADY  (PREADY),
        .PSLVERR (PSLVERR),

        .gpio_in (gpio_in),
        .gpio_out(gpio_out),
        .gpio_oe (gpio_oe)
    );

    // ------------------------------------------------------------
    // Clock generation
    // 10 ns clock period
    // ------------------------------------------------------------
    initial begin
        PCLK = 1'b0;

        forever #5 PCLK = ~PCLK;
    end

    // ------------------------------------------------------------
    // APB WRITE task
    // ------------------------------------------------------------
    task apb_write(
        input [7:0]  addr,
        input [31:0] data
    );

        begin

            // SETUP phase
            @(negedge PCLK);

            PSEL    = 1'b1;
            PENABLE = 1'b0;
            PWRITE  = 1'b1;
            PADDR   = addr;
            PWDATA  = data;

            // ACCESS phase
            @(negedge PCLK);

            PENABLE = 1'b1;

            @(negedge PCLK);

            // End transaction
            PSEL    = 1'b0;
            PENABLE = 1'b0;
            PWRITE  = 1'b0;
            PADDR   = 8'h00;
            PWDATA  = 32'h00000000;

        end

    endtask

    // ------------------------------------------------------------
    // APB READ task
    // ------------------------------------------------------------
    task apb_read(
        input  [7:0]  addr,
        output [31:0] data
    );

        begin

            // SETUP phase
            @(negedge PCLK);

            PSEL    = 1'b1;
            PENABLE = 1'b0;
            PWRITE  = 1'b0;
            PADDR   = addr;
            PWDATA  = 32'h00000000;

            // ACCESS phase
            @(negedge PCLK);

            PENABLE = 1'b1;

            @(posedge PCLK);

            data = PRDATA;

            @(negedge PCLK);

            // End transaction
            PSEL    = 1'b0;
            PENABLE = 1'b0;

        end

    endtask

    // ------------------------------------------------------------
    // Test sequence
    // ------------------------------------------------------------
    logic [31:0] read_data;

    initial begin

        // Initial values
        PSEL    = 1'b0;
        PENABLE = 1'b0;
        PWRITE  = 1'b0;
        PADDR   = 8'h00;
        PWDATA  = 32'h00000000;

        gpio_in = 8'h00;

        // Reset
        PRESETn = 1'b0;

        #20;

        PRESETn = 1'b1;

        #10;

        $display("----------------------------------------");
        $display("APB GPIO TEST START");
        $display("----------------------------------------");

        // --------------------------------------------------------
        // Test 1: Write GPIO_DATA
        // --------------------------------------------------------

        $display("TEST 1: Write GPIO_DATA = 0x55");

        apb_write(8'h00, 32'h00000055);

        #5;

        if (gpio_out == 8'h55)
            $display("PASS: GPIO_DATA write successful");
        else
            $display("FAIL: GPIO_DATA = %h", gpio_out);


        // --------------------------------------------------------
        // Test 2: Read GPIO_DATA
        // --------------------------------------------------------

        $display("TEST 2: Read GPIO_DATA");

        apb_read(8'h00, read_data);

        if (read_data == 32'h00000055)
            $display("PASS: GPIO_DATA read = %h", read_data);
        else
            $display("FAIL: GPIO_DATA read = %h", read_data);


        // --------------------------------------------------------
        // Test 3: Write GPIO_DIR
        // --------------------------------------------------------

        $display("TEST 3: Write GPIO_DIR = 0xF0");

        apb_write(8'h04, 32'h000000F0);

        #5;

        if (gpio_oe == 8'hF0)
            $display("PASS: GPIO_DIR write successful");
        else
            $display("FAIL: GPIO_DIR = %h", gpio_oe);


        // --------------------------------------------------------
        // Test 4: Read GPIO_DIR
        // --------------------------------------------------------

        $display("TEST 4: Read GPIO_DIR");

        apb_read(8'h04, read_data);

        if (read_data == 32'h000000F0)
            $display("PASS: GPIO_DIR read = %h", read_data);
        else
            $display("FAIL: GPIO_DIR read = %h", read_data);


        // --------------------------------------------------------
        // Test 5: GPIO input status
        // --------------------------------------------------------

        $display("TEST 5: Read GPIO_STATUS");

        gpio_in = 8'hA5;

        apb_read(8'h08, read_data);

        if (read_data == 32'h000000A5)
            $display("PASS: GPIO_STATUS read = %h", read_data);
        else
            $display("FAIL: GPIO_STATUS read = %h", read_data);


        // --------------------------------------------------------
        // Test 6: GPIO ID
        // --------------------------------------------------------

        $display("TEST 6: Read GPIO_ID");

        apb_read(8'h0C, read_data);

        if (read_data == 32'h4750494F)
            $display("PASS: GPIO_ID = %h", read_data);
        else
            $display("FAIL: GPIO_ID = %h", read_data);


        $display("----------------------------------------");
        $display("APB GPIO TEST COMPLETE");
        $display("----------------------------------------");

        #20;

        $finish;

    end

    // ------------------------------------------------------------
    // Waveform dump
    // ------------------------------------------------------------
    initial begin

        $dumpfile("sim/apb_gpio.vcd");

        $dumpvars(0, tb_apb_gpio);

    end

endmodule
