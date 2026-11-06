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

	//
	// instantiate the device under test
	//
	mul8 mul(
		.clk	(clk),
		.reset	(reset),
		.init1	(in1),
		.init2	(in2),
		.v		(valid),
		.out	(mul_out));
	
	initial begin
		reset = 1;
		cycle = 0;
		in1 = 10;
		in2 = 123;
	end

	always @(posedge clk) begin
		cycle = cycle + 1;
		reset <= (cycle > 0) ? 0 : 1;

		$display("cycle %04d - res %d v %d mul %0d", cycle, reset, valid, mul_out);

		if (cycle > 100) $finish;
	end

endmodule

