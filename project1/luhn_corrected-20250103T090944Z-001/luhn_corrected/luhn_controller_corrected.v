/*
Controller for Luhn Algorithm with optimized state transitions.
*/

`timescale 1ns/1ps
module luhn_controller (
    input go,
    input clk,
    input rst,
    output reg [2:0] present_state,
    output reg [3:0] i
);

// Parameterized states
parameter s0 = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter s4 = 3'b100;

reg [2:0] next_state;

// State transition logic
always @(posedge clk or posedge rst) begin
    if (rst) begin
        present_state <= s0;
        i <= 5'bz;
    end else begin
        present_state <= next_state;
    end
end

// Next state logic and counter management
always @(go or present_state) begin
    //$display("%0d",i);
    case (present_state)
        s0: begin
            if (go) next_state = s1;
            else next_state = s0;
        end
        s1: begin
            i = 0;
            next_state = s2;
        end
        s2: begin
            if (i < 16) next_state = s3;
            else next_state = s4;
        end
        s3: begin
            i = i + 1;
            next_state = s2;
        end
        s4: begin
            next_state = s0;
        end
        default: next_state = s0;
    endcase
end

endmodule