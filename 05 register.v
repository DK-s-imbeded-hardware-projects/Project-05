module priority4x2(code, data);
	output [1:0] code;
	input [3:0] data;
	reg [1:0] code;
	
	always @(data) begin
	if(data[0])
	else if (data[1]) code =1;
	else if (data[2]) code =2;
	else if (data[3]) code =3;
	else code = 2'bx;
	end
	endmodule
	