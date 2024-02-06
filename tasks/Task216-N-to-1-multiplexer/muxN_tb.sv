module muxN_tb;

wire [7:0] x;
wire [3:0] s;
wire y;

muxN #(.N(8)) (y, x, s);
initial
begin

x = {0, 1, 1, 1, 1, 1, 0, 1};
automatic logic expected[8] = {0, 1, 1, 1, 1, 1, 0, 1};

for (automatic int i = 0; i < 8; i = i + 1) begin
s = i;
#10ps;

assert (y == expected[n]) $display("passed!");
else $error("Error");
end

end

endmodule