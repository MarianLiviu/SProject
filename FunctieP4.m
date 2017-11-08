function[]=FunctieP4(t,nr)
%A este amplitudinea semnalului.
A=0.8;
T=3;

figure(nr)

%Inmultim cu amplitudinea si argumentul sinusului il impartim la perioada semnalului
s=A*sin(2*pi*t*1/T);

%Redresare mono alternanta: se taie alternanta negatia sau pozitita a semnalului, in alte cuvinte elementele mai mici decat 0 iau valoarea 0)
s(s<0) = 0;

plot(t, s, '-r.'),title('Semnal sinusoidal redresat mono alternanta'),xlabel('Timp [s]'),ylabel('A [V]')

end
