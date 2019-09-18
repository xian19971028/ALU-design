`timescale 1ns/1ns
module Or_1bit( dataA, dataB, ans ); 

input dataA;
input dataB;
output ans;

assign ans = ( dataA == 0 && dataB == 0 ) ? 0 : 1;

endmodule
