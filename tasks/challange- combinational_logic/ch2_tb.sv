module ch2_tb;

logic a, b, c, d;
logic [2:0] k;

ch2 t0 (d, a, b, c);

initial begin
assign {a, b, c} = k;

k = 3'b010;
#100ps; 			//a delay of 100ps
assert (d == 1) $display("passed!"); else $error("Failed for %b", k);
k = 3'b101;
#100ps;
assert (d == 1) $display("passed!"); else $error("Failed for %b", k);

end
endmodule