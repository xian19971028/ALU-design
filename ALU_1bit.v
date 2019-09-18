`timescale 1ns/1ns
module ALU_1bit( dataA, dataB, Signal, invertB, Less, cin, sum, cout );

input dataA;
input dataB;
input cin;
input [5:0] Signal;
input invertB;
input Less;
output sum;
output cout;

//   Signal ( 6-bits)?
//   AND  : 36
//   OR   : 37
//   ADD  : 32
//   SUB  : 34
//   SLT  : 42

parameter AND = 6'b100100;
parameter OR  = 6'b100101;
parameter ADD = 6'b100000;
parameter SUB = 6'b100010;
parameter SLT = 6'b101010;

wire AND_ans;
wire OR_ans;
wire ADD_ans;

wire invertDataB;
assign invertDataB = ( dataB == invertB ) ? 0 : 1;  // invertDataB = dataB XOR invertB 看Adder要減法還是加法

Adder_1bit Adder_1bit( .dataA( dataA ), .dataB( invertDataB ), .cin( cin ), .sum( ADD_ans ), .cout( cout ) );
Or_1bit Or_1bit( .dataA( dataA ), .dataB( dataB ), .ans( OR_ans ) );
And_1bit And_1bit( .dataA( dataA ), .dataB( dataB ), .ans( AND_ans ) );

assign sum = ( Signal == AND ) ? AND_ans : ( Signal == OR ) ? OR_ans : ADD_ans;

endmodule
