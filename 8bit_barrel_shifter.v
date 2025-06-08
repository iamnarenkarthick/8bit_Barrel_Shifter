`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2025 05:46:32 PM
// Design Name: 
// Module Name: 8bit_barrel_shifter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module barrel_shifter_8bit (
    input wire [7:0] a,        // 8-bit input data
    input wire [2:0] sel,      // 3-bit shift amount (rotate right)
    output reg [7:0] y         // 8-bit rotated output
);

always @(*) begin
    case (sel)
        3'b000: y = a;
        3'b001: y = {a[0], a[7:1]};
        3'b010: y = {a[1:0], a[7:2]};
        3'b011: y = {a[2:0], a[7:3]};
        3'b100: y = {a[3:0], a[7:4]};
        3'b101: y = {a[4:0], a[7:5]};
        3'b110: y = {a[5:0], a[7:6]};
        3'b111: y = {a[6:0], a[7]};
        default: y = a;
    endcase
end

endmodule
