module ch1_tb;

reg a, b, c, d;
reg [2:0] k;

ch1 t0(d, a, b, c);

initial begin
assign {a, b, c} = k;

for (k = 'd0; k < 'd8; k++) begin
	#5ps;
	if ((k >= 'd2) && (k <= 'd5)) begin
		assert (d == 'd1) $display("passed for %b", k); else $error("failed for %b", k);
	end
	else begin
	assert (d == 'd0) $display("passed for %b", k); else $error("failed for %b", k);
	end
	
end
end

endmodule