// test-harness module

module top(
	input clk
);

	reg				reset;
	reg		[15:0]	in1;
	reg		[15:0]	in2;
	wire	[15:0]	add_out;
	wire			valid;
	integer			cycle;

	//
	// instantiate the device under test
	//
	add16 adder(
		.clk	(clk),
		.reset	(reset),
		.init1	(in1),
		.init2	(in2),
		.v		(valid),
		.out	(add_out));
	
	initial begin
		reset = 1;
		cycle = 0;
		in1 = 131;
		in2 = 4116;
	end

	always @(posedge clk) begin
		cycle = cycle + 1;
		reset <= (cycle > 0) ? 0 : 1;

		$display("cycle %04d - res %d v %d add %0d", cycle, reset, valid, add_out);

		if (cycle > 200) $finish;
	end

endmodule

