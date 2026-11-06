module satdec (
	input	[15:0]	in,
	output	[15:0]	out
);
	wire			min = (in == 0);
	wire	[15:0]	minus1 = in - 1;
	assign out = (min) ? in : minus1;
endmodule

module add16 (
	input clk,
	input reset,
	input	[15:0]	init1,
	input	[15:0]	init2,
	output			v,
	output	[15:0]	out
);

	assign v = done;
	assign out = ctr2;

	reg		[15:0]	ctr1, ctr2;
	wire			i1_small =	// your code here
	wire			i1_big =	// your code here
	wire			done =		// your code here
	wire	[15:0]	init_ctr1 =	// your code here
	wire	[15:0]	init_ctr2 =	// your code here
	wire	[15:0]	ctr1_in =	// your code here
	wire	[15:0]	ctr2_in =	// your code here
	wire	[15:0]	plus1 =		// your code here
	wire	[15:0]	inc_out =	// your code here
	wire	[15:0]	dec_out;

	satdec mydec				// your code here

	always @ (posedge clk) begin
		ctr1 <= ctr1_in;
		ctr2 <= ctr2_in;
	end

endmodule
