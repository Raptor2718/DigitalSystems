module full_adder (output wire s, output wire cout, input wire a, input wire b, input wire c);

	wire na, nb, nc, d, e, f, g, h, i, j;

	not g0 (na, a), g1 (nb, b), g2 (nc, c);
	and g4 (d, na, nb, c);
	and g5 (e, na, b, nc);
	and g6 (f, a, b, c);
	and g7 (g, a, nb, nc);
	or g8 (s, d, e, f, g);

	and g9 (h, b, c);
	and g10 (i, a, c);
	and g11 (j, a, b);
	or g12 (cout, h, i, j);

endmodule