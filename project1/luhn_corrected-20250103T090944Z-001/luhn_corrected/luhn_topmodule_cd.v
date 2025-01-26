/* 
Developed by : Vecha Sathwik
Date : 26 - Jan -2025
Description : This is the top module for the Luhn algorithm. It instantiates the datapath and controller modules and connects them. 
Version : Beta
Rev : 0.1

*/



`timescale 1ns / 1ps
`include "luhn_datapath.v"
`include "luhn_controller.v"

module luhn_topmodule_cd (
    input clk,
    input rst,
    input [3:0] serial_in,
    output validate
);

wire go;
wire odd;
wire stop;
wire load_digit;
wire mult_sel;
wire load_sum;
wire output_enable;
wire count_enable;
wire sum_enable;


luhn_datapath luhn_datapath_inst (
    .clk(clk),
    .rst(rst),
    .serial_in(serial_in),
    .load_digit(load_digit),
    .mult_sel(mult_sel),
    .load_sum(load_sum),
    .output_enable(output_enable),
    .count_enable(count_enable),
    .sum_enable(sum_enable),
    .validate(validate),
    .odd(odd),
    .go(go),
    .stop(stop)
);

luhn_controller luhn_controller_inst (
    .clk(clk),
    .rst(rst),
    .go(go),
    .odd(odd),
    .load_digit(load_digit),
    .mult_sel(mult_sel),
    .load_sum(load_sum),
    .output_enable(output_enable),
    .count_enable(count_enable),
    .sum_enable(sum_enable)
);
    
endmodule