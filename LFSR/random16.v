
module random16 (
	input clk,
	input reset,
	input	[15:0] init,
	output	[15:0] out
);

	reg		[15:0]	counter;

	assign out = counter;

	wire	[15:0]	next_val = {
					counter[14],
					counter[13],
					counter[12],
					counter[11],
					counter[10],
					counter[9],
					counter[8],
					counter[7],
					counter[6],
					counter[5],
					counter[4],
					counter[3],
					counter[2],
					counter[1],
					counter[0],
					counter[15]
	};

	always @ (posedge clk) begin
		counter <= (reset) ? init : next_val;
	end

endmodule
