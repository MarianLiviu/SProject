function[]=FunctieP2(t,nr)
%nr ne ajuta sa afisam figurile in ferestre separate
width = 0.5;


%Pentru a reprezenta un semnal triunghiular se foloseste sawtooth(t,width), care primeste ca parametru si factorul de umplere, u
s=(1+width)*sawtooth(t*2*1/6*pi, width) - width;
%Pentru a seta nivelele de minim si maxim se inmulteste cu (1+width) si se scade width
%Pentru a seta panta la +1[V/s] se inmulteste t cu 1/6
figure(nr)
plot(t,s,'-r.'),title('Semnal triunghiular'),xlabel('Timp [s]'),ylabel('A [V]'),grid
end