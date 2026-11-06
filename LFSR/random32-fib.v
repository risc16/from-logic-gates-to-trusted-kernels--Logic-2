
module random32 (
	input clk,
	input reset,
	input	[31:0] init,
	output	[31:0] out
);

	reg		[31:0]	counter;

	assign out = counter;

	wire	[31:0]	next_val = {
					counter[30],
					counter[29],
					counter[28],
					counter[27],
					counter[26],
					counter[25],
					counter[24],
					counter[23],
					counter[22],
					counter[21],
					counter[20],
					counter[19],
					counter[18],
					counter[17],
					counter[16],
					counter[15],
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
					counter[1] ^ (counter[5] ^ (counter[6] ^ counter[31]))
	};

	always @ (posedge clk) begin
		counter <= (reset) ? init : next_val;
	end

endmodule
