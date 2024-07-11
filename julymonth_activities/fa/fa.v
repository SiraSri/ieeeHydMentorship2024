module fa(a,b,c,sum,co);

input a,b,c;
output sum,co;
xor(w1,a,b);
xor(sum,w1,c);
and(w2,c,w1);
and(w3,a,b);
or(co,w2,w3);
endmodule