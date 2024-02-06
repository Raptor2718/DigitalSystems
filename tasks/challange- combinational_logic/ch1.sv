module ch1(output wire Y, input wire a, input wire b, input wire c);

assign Y = (a&~b&c) | (a&~b&~c) | (~a&b&c) | (~a&b&~c);

endmodule