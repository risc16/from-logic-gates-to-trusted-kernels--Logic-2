// test-harness module

module top(
	input clk
);

	reg				reset;
	wire	[31:0]	ctr_out;
	reg		[31:0]	init;
	integer			cycle;

	//
	// instantiate the device under test
	//
	random32 ctr(
		.clk	(clk),
		.reset	(reset),
		.init	(init),
		.out	(ctr_out));
	
	initial begin
		reset = 1;
		cycle = 0;
		init = 17;
	end

	always @(posedge clk) begin
		cycle = cycle + 1;
		reset <= (cycle > 0) ? 0 : 1;

		$display("cycle %04d - res %d ctr %d (%b)", cycle, reset, ctr_out, ctr_out);

		if (cycle > 4300000000) $finish;
	end

endmodule
