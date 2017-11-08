%Semnal dreptunghiular periodic cu perioada de 2 secunde
%T este perioada semnalului in secunde.
T = 2;

%Apelam functia FunctieP1 pentru fiecare rezolutie.
%2ms
FunctieP1(0:0.002:T,1) 
%20ms
FunctieP1(0:0.02:T,2) 
%200ms
FunctieP1(0:0.2:T,3) 
