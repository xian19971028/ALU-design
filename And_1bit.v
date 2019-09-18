`timescale 1ns/1ns
module And_1bit( dataA, dataB, ans ); 

input dataA;
input dataB;
output ans;

assign ans = ( dataA == 1 && dataB == 1 ) ? 1 : 0;

endmodule
