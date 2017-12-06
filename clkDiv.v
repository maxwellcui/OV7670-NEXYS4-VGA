`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:11:10 10/08/2013 
// Design Name: 
// Module Name:    clkDiv 
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
module clkDiv(
    input [31:0] divNum,
    input clk_in,
    output clk_out
    );

	wire[31:0] internal_divNum;
	reg[31:0] cnt = 0;
	reg myclk;
	
	assign clk_out = myclk;
	assign internal_divNum = divNum/2;

	initial
	begin
		myclk = 0;
	end
	
	always @ (posedge clk_in) 
	begin		
	cnt = cnt+1;
	
			if (cnt == internal_divNum) 
			begin
				myclk <= ~myclk;
				cnt = 0;
			end
	end
endmodule
