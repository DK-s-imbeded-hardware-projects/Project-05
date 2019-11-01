module LED7seg(display, bcd);
	output [6:0] display;
	input [3:0] bcd;
	reg [6:0] display;
	
	always @(bcd) begin
	case (bcd)
	0: display = 7'b000_0001;
	1: display = 7'b100_1111;
	2: display = 7'b001_0010;
	3: display = 7'b000_0110;
	4: display = 7'b100_1100;
	5: display = 7'b010_0100;
	6: display = 7'b000_1111;
	7: display = 7'b000_1111;
	8: display = 7'b000_0000;
	9: display = 7'b000_0100;
	10: display = 7'b000_1000;
	11: display = 7'b110_0000;
	12: display = 7'b011_0001;
	13: display = 7'b100_0010;
	14: display = 7'b011_0000;
	15: display = 7'b011_1000;
	
	default: display = 7'b000_0000;
	endcase
	end
	endmodule