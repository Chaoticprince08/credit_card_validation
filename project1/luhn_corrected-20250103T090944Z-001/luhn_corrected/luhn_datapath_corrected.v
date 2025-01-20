/*
Implementation of Luhn Algorithm for credit card validation of size 16 bits
Updated Version
*/

`timescale 1ns/1ps
module luhn_datapath (
    input clk,
    input rst,
    input [3:0] serial_in,
    input [3:0] i,
    output reg validate,
    output reg go
);

// Memory to store card digits
reg [3:0] card_number [15:0];
integer j;
reg [7:0] sum;

// Resetting the card number and sum
always @(posedge rst) begin
    for (j = 0; j < 16; j = j + 1) begin
        card_number[j] = 4'b0;
    end
    j = 0;
    sum = 8'b0;
end

// Storing the card number
always @(posedge clk) begin
    if (serial_in !== 4'bx && serial_in !== 4'bz && j <= 15) begin
        card_number[j] <= serial_in;
        j <= j + 1;
        //$display("Card Number[%0d]: %0d", j, serial_in);
    end
    if (j == 16) begin
        go <= 1'b1;
    end else begin
        go <= 1'b0;
    end
end

// Logic for the Luhn checksum
always @(i) begin
    //$display("Card Number[%0d]: %0d", i, card_number[i]);
    if (i < 16) begin
        if (i % 2 != 0) begin
            sum <= sum + card_number[i];
        end
    else begin
        if (card_number[i] * 2 > 9) begin
            sum <= sum + (card_number[i] * 2 - 9);
        end 
        else begin
            sum <= sum + (card_number[i] * 2);
        end
    end
    
    end
end

// Validation of the checksum
always @(posedge clk) begin
    //$display("Sum: %0d", sum);
    if (sum % 10 == 0 && j == 16) begin
        validate <= 1'b1;
    end else begin
        validate <= 1'b0;
    end
end

endmodule
