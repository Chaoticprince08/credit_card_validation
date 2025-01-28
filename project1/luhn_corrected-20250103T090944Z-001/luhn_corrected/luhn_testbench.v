/*
Testbench for Luhn Algorithm Validation.
*/
`include "luhn_topmodule_cd.v"
`timescale 1ns/1ps
module luhn_testbench;

    reg clk;
    reg rst;
    reg [3:0] serial_in;
    wire validate;
    
    // Instantiate top module
    luhn_topmodule_cd uut (
        .clk(clk),
        .rst(rst),
        .serial_in(serial_in),
        .validate(validate)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test vector
    reg [63:0] card_number = 64'h5334670022992784; // Example valid card number
    integer i;

    initial begin
        $dumpfile("luhn_testbench.vcd");
        $dumpvars;
        // Reset system
        rst = 1;
        #10;
        rst = 0;

        // Send card number digits serially
        for (i = 15; i >= 0; i = i - 1) begin
            serial_in = card_number[4 * i +: 4];
            #10;
        end

        // Wait for validation
        #1500;
        

        // Check results
        /*if (uut.datapath.validate) begin
            $display("Card is valid.");
        end else begin
            $display("Card is invalid.");
        end*/

        $finish;
    end

endmodule
