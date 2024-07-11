module mux4x1(a, b, c, d, s0, s1, y);

input a,b,c,d,s0,s1;
output y;

not(s0bar,s0);
not(s1bar,s1);
and(w0,a,s0bar,s1bar);
and(w1,b,s0,s1bar);
and(w2,c,s0bar,s1);
and(w3,d,s0,s1);
or(y,w0,w1,w2,w3);

endmodule
