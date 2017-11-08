function[]=FunctieP5(t,nr)
%A este amplitudinea semnalului
A=1.5;
T=4;

figure(nr)

%Inmultim cu amplitudinea si argumentul sinusului il impartim la perioada semnalului
s=A*abs(sin(2*pi*t*1/T));
%Redresare dubla alternanta: se taie alternanta negativa sau pozitita a
%semnalului si se muta in partea opusa.
plot(t, s, '-r.' ),title('Semnal sinusoidal redresat dubla alternanta'),xlabel('Timp [s]'),ylabel('A [V]')

end
