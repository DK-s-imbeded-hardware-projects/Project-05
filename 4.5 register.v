module majority_task(Y, Data);
	parameter size = 9;
	parameter majority = 5;
	input [size-1:0] Data;
	output Y;
	reg Y;
	reg [3:0] count;
	integer k;
	
	task count_num;
		output [3:0] count;
		input [size-1:0] data;
		
		begin 
			count = 0;
			for(k = 0; k < size; k = k+1) begin
				if(data[k] == 1) count = count + 1;
			end
		end
	endtask
	
	always @(Data) begin
		count_num(count, Data);
		Y = (count >= majority);
	end
endmodule
