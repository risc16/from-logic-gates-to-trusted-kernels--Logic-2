// test-harness module

module top(
	input clk
);

	reg				reset;
	reg		[7:0]	in1;
	reg		[7:0]	in2;
	wire	[15:0]	mul_out;
	wire			valid;
	integer			cycle;
	integer			prod;

	//
	// instantiate the device under test
	//
	optmul8 mul(
		.clk	(clk),
		.reset	(reset),
		.init1	(in1),
		.init2	(in2),
		.v		(valid),
		.out	(mul_out));
	
	initial begin
		cycle = 0;
	end

	always @(posedge clk) begin
		if (cycle == 0) begin
			in1 = 10;
			in2 = 123;
			reset = 1;
		end else if (cycle == 12) begin
			in1 = 129;
			in2 = 201;
			reset = 1;
		end else if (cycle == 24) begin
			in1 = 255;
			in2 = 89;
			reset = 1;
		end else if (cycle == 36) begin
			in1 = 194;
			in2 = 213;
			reset = 1;
		end else begin
			reset = 0;
		end

		cycle = cycle + 1;
		prod = in1 * in2;

		$display("cycle %04d - res %d v %d  -- %d x %d = %d (%0d)", cycle, reset, valid, in1, in2, mul_out, prod);

		if (cycle > 50) $finish;
	end

endmodule

