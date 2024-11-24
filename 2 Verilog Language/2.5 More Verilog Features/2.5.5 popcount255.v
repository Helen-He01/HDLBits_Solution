module top_module (
	input [254:0] in,
	output reg [7:0] out //don't need to use a reg, but better to use since it can store the data and don't change because of the previous value
);

	always @(*) begin	// Combinational always block
		out = 0;	//it may store previous value if not use it
		for (int i=0;i<255;i++)
			out = out + in[i];
	end
	
endmodule
