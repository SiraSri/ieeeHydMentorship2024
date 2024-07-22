`timescale 1ns/1ps
module tb_fabeh;

reg a,b,c;

wire sum,co;

fabeh dut(a,b,c,sum,co);

initial
begin
$monitor ("@time %gns a=%b b=%b c=%b sum=%b co=%b", $time, a,b,c,sum,co);
#1;
a=0;b=0;c=0;
#1;
a=0;b=0;c=1;
#1;
a=0;b=1;c=0;
#1;
a=0;b=1;c=1;
#1;
a=1;b=0;c=0;
#1;
a=1;b=0;c=1;
#1;
a=1;b=1;c=0;
#1;
a=1;b=1;c=1;
#1;

$stop;
end 
endmodule