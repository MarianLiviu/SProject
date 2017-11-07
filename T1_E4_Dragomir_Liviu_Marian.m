%a)
%se declara vectorii
z = zeros(1,21);
n = 0:20;
m = -5:15;

%subplot arata 2 grafice separate in aceiasi fereastra
%title se foloseste pentru a da nume graficelor
%grid traseaza o retea de linii
figure(1)
subplot(2,1,1),stem(z,n),title('stem(z,n)'),grid
subplot(2,1,2),stem(z,m),title('stem(z,m)'),grid


%b)
%se creeaza vectorul t
t = abs(10-n);
%pentru a arata graficul intr-o alta fereastra se foloseste figure 
figure(2)
%se reprezinta grafic
stem(t,n),title('stem(t,n)'),grid


%c)
%se creeaza vectorii
figure(3)
n = -15:25;
x1 = sin((pi/17)*n);
m = 0:50;
x2 = cos((pi/sqrt(23))*m);

%se foloseste plot deoarece stem nu functioneaza pentru afisarea mai multor grafice
%intr-o singura fereastra grafica
plot(x1,n,x2,m),title('plot(x1,n,x2,m)'),grid

figure(4)
subplot(2,1,1),stem(x1,n),title('stem(x1,n)'),grid
subplot(2,1,2),stem(x2,m),title('stem(x2,m)'),grid
