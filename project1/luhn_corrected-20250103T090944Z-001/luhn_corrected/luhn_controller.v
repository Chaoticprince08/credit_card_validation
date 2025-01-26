/* 
Developed by : Vecha Sathwik
Date : 26 - Jan -2025
Description : This is the controller module for the Luhn algorithm. It controls the datapath module.
Rev : 0.1

*/



`timescale 1ns / 1ps
module luhn_controller (
    input clk,
    input rst,
    input go,
    input odd,
    input stop,
    output reg load_digit,
    output reg mult_sel,
    output reg load_sum,
    output reg output_enable,
    output reg count_enable,
    output reg sum_enable
);

// Parameterized states
parameter s0 = 4'b0000;
parameter s1 = 4'b0001;
parameter s2 = 4'b0010;
parameter s3 = 4'b0011;
parameter s4 = 4'b0100;
parameter s5 = 4'b0101;
parameter s6 = 4'b0110;
parameter s7 = 4'b0111;
parameter s8 = 4'b1000;
parameter s9 = 4'b1001;
parameter s10 = 4'b1010;

reg [3:0] next_state;
reg [3:0] present_state;

always @(posedge(clk) or posedge(rst)) begin
    if(rst) begin
        load_digit <= 1'b0;
        mult_sel <= 1'b0;
        load_sum <= 1'b0;
        output_enable <= 1'b0;
        count_enable <= 1'b0;
        sum_enable <= 1'b0;
        present_state <= s0;
        next_state <= s0;
    end
    else begin
      present_state <= next_state;
    end
end

always @(present_state) begin
    if (go == 1'b1 & present_state == s0) begin
        next_state = s1;
        load_digit = 1'b0;
        mult_sel = 1'b0;
        load_sum = 1'b0;
        output_enable = 1'b0;
        count_enable = 1'b0;
        sum_enable = 1'b0;              
    end
    else begin
        case (present_state)
            s1 : begin
                load_digit = 1'b1;
                mult_sel = 1'b0;
                load_sum = 1'b0;
                output_enable = 1'b0;
                count_enable = 1'b0;
                next_state = s2;
            end 
            s2 : begin
                next_state = s3;
                //load_digit = 1'b1;
            end
            s3 : begin
                if (odd == 1'b0) begin
                    next_state = s4;
                end
                else begin
                    next_state = s5;
                end
            end
            s4 : begin
                load_digit = 1'b0;
                output_enable = 1'b0;
                mult_sel = 1'b1;
                count_enable = 1'b1;
                next_state = s6;
            end
            s5 : begin
                load_digit = 1'b0;
                output_enable = 1'b0;
                mult_sel = 1'b0;
                count_enable = 1'b1;
                next_state = s6;
            end
            s6 : begin
                load_digit = 1'b0;
                output_enable = 1'b0;
                count_enable = 1'b0;
                next_state = s7;
            end
            s7 : begin
                sum_enable = 1'b1;
                next_state = stop ? s9 : s8;                
            end
            s8 : begin
                sum_enable = 1'b0;
                next_state = s1;
            end
            s9 : begin
                output_enable = 1'b1;
                next_state = s0;
            end
            default: next_state = s0;
        endcase
    end
end

endmodule