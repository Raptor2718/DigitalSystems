module comb_logic_tb;
logic y, aa, bb, kk[1:0] = {aa, bb};

comb_logic g0 (y, aa, bb);

initial 
begin
for (kk = 0; kk <= 3; kk++)
	begin
	y = (aa != bb) ? $display("passed %b", kk) : $error("failed for %b", kk);
	end
end

endmodule

