module satdec (
	input	[7:0]	in,
	output	[7:0]	out
);
	wire			min = (in == 0);
	wire	[7:0]	minus1 = in - 1;
	assign out = (min) ? in : minus1;
endmodule

module mul8 (
	input clk,
	input reset,
	input	[7:0]	init1,
	input	[7:0]	init2,
	output			v,
	output	[15:0]	out
);

	assign	v = done;
	assign	out = product;

	reg		[7:0]	cand;
	reg		[15:0]	product;
	wire			i1_small =	// your code here
	wire			i1_big =	// your code here
	wire			done =		// your code here
	wire	[7:0]	init_cand =	// your code here
	wire	[7:0]	init_plier =	// your code here
	wire	[15:0]	plier =		{8'd0, init_plier};
	wire	[7:0]	cand_in =	// your code here
	wire	[15:0]	prod_in =	// your code here
	wire	[15:0]	sum =		// your code here
	wire	[15:0]	inc_out =	// your code here
	wire	[7:0]	dec_out;

	satdec mydec				// your code here

	always @ (posedge clk) begin
		cand <= cand_in;
		product <= prod_in;
	end

endmodule
