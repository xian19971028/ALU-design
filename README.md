# ALU-design
利用Verilog語言設計ALU、Division Hardware、Shifters、HiLo暫存器、Mux多工器、ALU Control、Testbench。

# ALU
包含32-bits ADD、SUB、SLT、AND、OR功能，不能直接使用operator （例如：+、-、*、/）來進行運算，且完整的32-bits ALU必須是用32個1bit ALU連接起來（如講義內的設計）。必須使用Gate-Level Modeling與Data Flow Modeling來撰寫（組合邏輯）。

# Division Hardware
32-bits無號數除法器，限制使用講義的第三版除法器來設計，並且不可使用迴圈形式的設計（循序邏輯）。

# Shifter
不可直接使用“<<”或“>>”operator進行位移，每層（shamt為五位元、因此共有五層）必須使用32個2 to多工器1來設計（共有32*5 = 160個多工器） （組合邏輯）。

# Mux多工器
能夠依照訊號選擇指定功能的運算答案（組合邏輯）。

# ALU Control
依照訊號控制ALU、Divider、Shifters做指定的運算--AND（36）、OR（37）、ADD（32）、SUB（34）、SLT（42）、SLL（0）、DIVU（27）（循序邏輯）。

# Testbench
為測試以上撰寫的verilog結果的正確與否，利用讀取input.txt檔與ans.txt檔來判斷答案是否正確。
