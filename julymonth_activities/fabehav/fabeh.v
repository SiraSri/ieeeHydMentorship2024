module fabeh(a,b,cin,s,cout);
input a,b,cin;
output reg s,cout;

always@(*)begin
s=a+b+cin;
cout=(a&b)|(cin&(a^b))
end
endmodule
