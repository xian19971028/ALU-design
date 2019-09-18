`timescale 1ns/1ns
module Adder_1bit( dataA, dataB, cin, sum, cout );

input dataA, dataB, cin;
output sum, cout;

wire e1, e2, e3;

assign e1 = ( dataA == dataB ) ? 0 : 1;
assign e2 = ( dataA == 1 && dataB == 1 ) ? 1 : 0;
assign e3 = ( cin == 1 && e1 == 1 ) ? 1 : 0;
assign cout = ( e2 == 0 && e3 == 0 ) ? 0 : 1;
assign sum = ( cin == e1 ) ? 0 : 1;

endmodule
