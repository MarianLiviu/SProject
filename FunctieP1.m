function[]=FunctieP1(t,nr)

%nr ne ajuta sa afisam figurile in ferestre separate
%u este factorul de umplere
u = 1/4;

%Pentru a reprezenta un semnal dreptunghiular se foloseste square(t, u), care primeste ca parametru si factorul de umplere, u
s=(1-u)*square(t*2*pi, u*100) - u;
%Pentru a seta nivelele de minim si maxim se inmulteste cu (1-u) si se scade u deoarece nivelurile
%maxim si minim nu sunt opuse
figure(nr)
plot(t,s,'-r.'),title('Semnal dreptunghiular periodic'),xlabel('Timp [s]'),ylabel('A [V]'),grid
end