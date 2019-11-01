module majority_func(Y, Data);
	parameter size = 9;
	parameter majority = 5;
	input [size-1:0] Data;
	output Y;
	reg Y;
	reg [3:0] count;
	integer k;
	
	function [3:0]count_num;
		input [size-1:0] data;
		
		begin
			count_num = 0;
			for (k = 0; k < size; k = k + 1) begin
				if(data[k] == 1) count_num = count_num + 1;
			end
		end
	endfunction
	
	always @(Data) begin
		Y = (count_num(Data) >= majority);
	end
endmodule
