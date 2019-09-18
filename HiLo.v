`timescale 1ns/1ns
module HiLo( clk, DivAns, HiOut, LoOut, reset );
input clk ;
input reset ;
input [63:0] DivAns ;
output reg [31:0] HiOut ;
output reg [31:0] LoOut ;

reg [63:0] HiLo ;

/*
=====================================================
下面為模擬範例，程式撰寫請遵照老師上課說明的方法來寫
=====================================================
*/
always@( posedge clk or reset )
begin
  if ( reset )
  begin
    HiLo = 64'b0;
  end
/*
reset訊號 如果是reset就做歸0
*/
  else
  begin
    HiLo = DivAns ;
	HiOut = HiLo[63:32] ;
	LoOut = HiLo[31:0] ;
  end
/*
把傳入的除法答案存起來
*/
end


/*
=====================================================
上面為模擬範例，程式撰寫請遵照老師上課說明的方法來寫
=====================================================
*/
endmodule
