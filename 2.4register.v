module casex_priority4x2(code,data,valid);
	ouput [1:0] code;
	input [3:0] data;
	output valid;
	reg [1:0];
	
	always @(data) begin
	casex (data)
	4'bxxx1: code = 0;
	4'bxx10: code = 1;
	4'bx100: code = 2;
	4'b1000: code = 3;
	default: code =2'bx;
	endcase
	end
	assign valid = | dat;
	endmodule