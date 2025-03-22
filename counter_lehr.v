//2мая20
//TestBench на Verilog для новичков
//http://we.easyelectronics.ru/plis/testbench-na-verilog-dlya-novichkov.html


module counter_lehr (clk, reset, enable, count);
input clk, reset, enable;
output [3:0] count;
reg [3:0] count;                                   
 
always @ (posedge clk)
if (reset == 1'b1) begin
   count <= 0;
end else if ( enable == 1'b1) begin
   count <= count + 1;
end
 
endmodule 