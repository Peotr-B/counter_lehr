# counter_lehr
ALTERA FPGA CYCLONE IV EP4CE
 D:\intelFPGA_File\counter_lehr

 22мар25
 @Biriuk
  peotr60@mail.ru
 
TestBench на Verilog дл€ новичков

http://we.easyelectronics.ru/plis/testbench-na-verilog-dlya-novichkov.html

ƒанна€ стать€ освещает базовые вопросы написани€ TestBench на €зыке Verilog. 
ѕредполагаетс€, что вы уже знакомы с синтаксисом €зыка Verilog и прочли пост про интеграцию Quartus и ModelSim.
–екомендуетс€ к изучени€ новичкам, всем интересующимс€ и незнающим как подступитьс€ к написанию TestBench.

Давайте добавим в программу условия остановки симуляции.

event terminate_sim;  
initial begin  
 @ (terminate_sim); 
 #5  $stop; 
end  

Теперь в нужное место вставляем

-> terminate_sim;

Комментарии (FAQ)

EDA RTL Simulation не есть хорошо. Для проверки работоспособности проекта в ПЛИС 
используется Gate Level Simulation acvarif.info/artplis/artplis7.html которая 
учитывает задержки сигналов проекта в конкретной выбранной ПЛИС. 


 Подскажите где выставить время моделирования в шагах или единицах времени а то 
 при первом же тесте кончилось место на жёстком диске)). В modelsim нужно 
 передать параметр run <время>, только что то не нашёл настроек через квартус. 
 Как вариант прокатит исправление *.do файла в проекте или же всё таки придётся через квартус искать?
0
    avatar
    Orochi
    02 декабря 2011, 23:15

В тестбенче пишете:
initial
#10000 $finish;
Понятное дело, количество шагов сами задаете
0
    avatar
    PPetrovich
    02 декабря 2011, 23:50
    ?

как вариант нашёл где настроить из квартуса: 
Assignments — Settings — Simulation — Test Benches — Edit — «End simulation at ...»
0

