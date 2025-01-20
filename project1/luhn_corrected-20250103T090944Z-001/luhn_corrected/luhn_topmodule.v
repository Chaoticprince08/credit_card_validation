/*
Top module for integrating Luhn datapath and controller.
*/
//`include "luhn_controller_corrected.v"
//`include "luhn_datapath_corrected.v"
`timescale 1ns/1ps
module luhn_top_module (
    input clk,
    input rst,
    input [3:0] serial_in,
    output validate
);

    wire go;
    wire [3:0] i;

    // Instantiate datapath module
    luhn_datapath datapath (
        .clk(clk),
        .rst(rst),
        .serial_in(serial_in),
        .i(i),
        .validate(validate),
        .go(go)
    );

    // Instantiate controller module
    luhn_controller controller (
        .clk(clk),
        .rst(rst),
        .go(go),
        .present_state(), // Optional debugging output
        .i(i)
    );

endmodule
