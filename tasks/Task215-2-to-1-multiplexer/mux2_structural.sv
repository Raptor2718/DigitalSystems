module mux2_structural (output logic y, input logic a, b, s);

wire t0, t1, t2, not_s;

and g0 (t0, a, b);
and g1 (t1, b, s);
not g2 (not_s, s);
and g3 (t2, a, not_s);
or  g4 (y, t0, t1, t2);

endmodule