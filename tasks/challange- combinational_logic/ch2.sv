module ch2 (output wire y, input wire a, input wire b, input wire c);

wire inva, invb, invc, tm2, tm5;

not #5ps g0 (inva, a);
not #5ps g1 (invb, b);
not #5ps g2 (invc, c);
and #5ps g3 (tm2, inva, b, invc);
and #5ps g4 (tm5, a, invb, c);
or #5ps g5 (y, tm2, tm5);

endmodule