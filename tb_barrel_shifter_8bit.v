`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2025 06:16:33 PM
// Design Name: 
// Module Name: tb_barrel_shifter_8bit
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



module tb_barrel_shifter_8bit;

    reg [7:0] a;          // Test input
    reg [2:0] sel;        // Shift control
    wire [7:0] y;         // Output

    // Instantiate the DUT
    barrel_shifter_8bit uut (
        .a(a),
        .sel(sel),
        .y(y)
    );

    initial begin
        $display("Time\t a\t\t sel\t y");
        $monitor("%0t\t %b\t %b\t %b", $time, a, sel, y);

        // Apply test vectors
        a = 8'b10110011;

        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;

        $finish;
    end

endmodule


