/* 
Developed by : Vecha Sathwik
Date : 26 - Jan -2025
Description : This is the datapath module for the Luhn algorithm. It performs the necessary operations to validate the card number.
Rev : 0.1

*/



`timescale 1ns / 1ps
module luhn_datapath (
    input clk,
    input rst,
    input [3:0] serial_in,
    input load_digit,
    input mult_sel,
    //input load_mult,
    input load_sum,
    input output_enable,
    input count_enable,
    input sum_enable,
    output reg validate,
    output reg odd,
    output reg go,
    output reg stop
);

reg [3:0] count;
reg [3:0] value_out;
reg [4:0] mult_out;
reg [4:0] mult_value_out;
reg [4:0] comp_value_zero;
reg [4:0] comp_value_one;
reg [4:0] comp_out;
reg [10:0] sum;


// Memory to store card digits
reg [3:0] card_number [15:0];
integer j;


// Resetting the card number and sum
always @(posedge rst) begin
    for (j = 0; j < 16; j = j + 1) begin
        card_number[j] = 4'b0;
    end
    j = 0;
    sum = 10'b0;
end

// Storing the card number
always @(posedge clk) begin
    if (serial_in !== 4'bx && serial_in !== 4'bz && j <= 15) begin
        card_number[j] <= serial_in;
        j <= j + 1;
        //$display("Card Number[%0d]: %0d", j, serial_in); //For debugging
    end
    if (j == 16) begin
        go <= 1'b1;
    end else begin
        go <= 1'b0;
    end
end


//Registers or Sequential Logic
always @(posedge(rst) or posedge(clk)) begin
    if(rst == 1'b1) begin
        count <= 4'b0000;
        validate <= 1'b0;
    end
    else begin
        if(load_digit == 1'b1) begin
            value_out <= serial_in;
        end
        else if (mult_sel == 1'b1) begin
            mult_out <= mult_value_out;
        end
        else if (mult_sel == 1'b0) begin
            mult_out <= value_out;
        end
        
        else if (mult_out > 9) begin
            comp_out <= comp_value_one;
        end
        else begin
            comp_out <= comp_value_zero;
        end
        
    end
end

//Combinational Logic
always @(*) begin
    mult_value_out = value_out *2;
    comp_value_one = mult_out - 9;
    comp_value_zero = mult_out;
    if(sum_enable == 1'b1) begin
        sum = sum + comp_out;
    end
end




//Counter Logic
always @(posedge(clk)) begin
    if(count_enable == 1'b1 & rst == 1'b0) begin
        count <= count + 1'b1;
    end
    if (count[0] == 1'b1) begin
        odd <= 1'b0;
    end
    else begin
        odd <= 1'b1;
    end
end

//Output Logic
always @(count) begin
    if (count == 4'b1111) begin
        stop = 1'b1;
        if (sum%10 == 1'b0) begin
            validate = 1'b1;
        end
        else begin
            validate = 1'b0;
        end
    end
    else begin
        validate = 1'b0;
        stop = 1'b0;
    end
end

endmodule