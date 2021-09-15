`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:25:21 09/04/2020 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] a,
    input [31:0] b,
    input [2:0] alu_control,
    output reg [31:0] result,
    output zero
    );
	 
	 always @(*)  //fpga4student.com: FPga projects, Verilog projects, VHDL projects
 begin   
      case(alu_control)  
      3'b000: result = a + b; // add  
      3'b001: result = a - b; // sub  
      3'b010: result = a & b; // and  
      3'b011: result = a | b; // or  
      
		3'b100: begin if (a<b) result = 32'd1;  
                     else result = 32'd0;  
                     end  
      default:result = a + b; // add  
      endcase  
 end  
 assign zero = (result==32'd0) ? 1'b1: 1'b0;


endmodule
