
module optmul8 (
	input clk,
	input reset,
	input	[7:0]	init1,
	input	[7:0]	init2,
	output			v,
	output	[15:0]	out
);

	assign	v = done;
	assign	out = product;

	reg		[7:0]	mplier;
	reg		[15:0]	mcand;
	reg		[15:0]	product;

	wire	[15:0]	ext_init2 =		{8'd0, init2};

	wire			done =			(mplier == 0);
	wire			lsb =			// your code here

	wire	[7:0]	mplier_shr =	// your code here
	wire	[15:0]	mcand_shl =		// your code here

	wire	[15:0]	adder_in =		// your code here
	wire	[15:0]	sum =			// your code here
	wire	[7:0]	mplier_in =		// your code here
	wire	[15:0]	mcand_in =		// your code here
	wire	[15:0]	product_in =	// your code here

	always @ (posedge clk) begin
		mcand <= mcand_in;
		product <= product_in;
		mplier <= mplier_in;
	end

endmodule
