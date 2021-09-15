`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:37:59 09/04/2020 
// Design Name: 
// Module Name:    ALUControl 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALUControl(
    output reg [2:0] ALU_Control,
    input [1:0] ALUOp,
    input [5:0] Function
    );
	 
	 wire [7:0] ALUControlIn;  
	 assign ALUControlIn = {ALUOp,Function};  
	 always @(ALUControlIn)  
	 casex (ALUControlIn)  
    8'b11xxxx: ALU_Control=3'b000;  
    8'b10xxxx: ALU_Control=3'b100;  
    8'b01xxxx: ALU_Control=3'b001;  
    8'b000000: ALU_Control=3'b000;  
    8'b000001: ALU_Control=3'b001;  
    8'b000010: ALU_Control=3'b010;  
    8'b000011: ALU_Control=3'b011;  
    8'b000100: ALU_Control=3'b100;  
    default: ALU_Control=3'b000;  
    endcase  
endmodule  




