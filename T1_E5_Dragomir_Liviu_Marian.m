%exemplul din platforma
F = 50;
figure(1)
t = 0:0.001:0.2;
s = 2*sin(2*pi*F*t);
E5func(t,s,0)

%a) 
%Se modifica t la 0.01, graficul nu mai este sinusoidal
figure(2)
t = 0:0.01:0.2;
s = 2*sin(2*pi*F*t);
E5func(t,s,0)

%Se modifica t la 0.0002, graficul este la fel ca cel din exemplul initial
figure(3)
t = 0:0.0002:0.2;
s = 2*sin(2*pi*F*t);
E5func(t,s,0)

%c)
%se genereaza un semnal cosinusoidal de frecventa 20 Hz
figure(4)
F = 20;
t = 0:0.001:0.2;
s = 2*cos(2*pi*F*t);
E5func(t,s,1)
