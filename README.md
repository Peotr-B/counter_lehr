# counter_lehr
ALTERA FPGA CYCLONE IV EP4CE
 D:\intelFPGA_File\counter_lehr

 22���25
 @Biriuk
  peotr60@mail.ru
 
TestBench �� Verilog ��� ��������

http://we.easyelectronics.ru/plis/testbench-na-verilog-dlya-novichkov.html

������ ������ �������� ������� ������� ��������� TestBench �� ����� Verilog. 
��������������, ��� �� ��� ������� � ����������� ����� Verilog � ������ ���� ��� ���������� Quartus � ModelSim.
������������� � �������� ��������, ���� �������������� � ��������� ��� ������������ � ��������� TestBench.

������� ������� � ��������� ������� ��������� ���������.

event terminate_sim;  
initial begin  
 @ (terminate_sim); 
 #5  $stop; 
end  

������ � ������ ����� ���������

-> terminate_sim;

����������� (FAQ)

EDA RTL Simulation �� ���� ������. ��� �������� ����������������� ������� � ���� 
������������ Gate Level Simulation acvarif.info/artplis/artplis7.html ������� 
��������� �������� �������� ������� � ���������� ��������� ����. 


 ���������� ��� ��������� ����� ������������� � ����� ��� �������� ������� � �� 
 ��� ������ �� ����� ��������� ����� �� ������� �����)). � modelsim ����� 
 �������� �������� run <�����>, ������ ��� �� �� ����� �������� ����� �������. 
 ��� ������� �������� ����������� *.do ����� � ������� ��� �� ��� ���� �������� ����� ������� ������?
0
    avatar
    Orochi
    02 ������� 2011, 23:15

� ��������� ������:
initial
#10000 $finish;
�������� ����, ���������� ����� ���� �������
0
    avatar
    PPetrovich
    02 ������� 2011, 23:50
    ?

��� ������� ����� ��� ��������� �� ��������: 
Assignments � Settings � Simulation � Test Benches � Edit � �End simulation at ...�
0

