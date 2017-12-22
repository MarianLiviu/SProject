%Nume: Dragomir Liviu Marian  Numar: 8
%Grupa 422C
%Durata semnalelor D = 22
%Numar de coeficienti = 50

P = 40; %Perioada de 40s
D = 8; %Durata semnalelor
N = 50; %Numar de coeficienti

w0 = 2*pi/P; %Pulsatia semnalului
t_tr = 0:0.02:D; %Se esantioneaza semnalul original
x_tr = sawtooth((pi/4)*t_tr,0.5)/2+0.5; %"sawtooth" pentru semnal triunghiular
t = 0:0.02:P; %Se esantioneaza semnalul modificat

x = zeros(1,length(t)); %Se initializeaza semnalul modificat cu valori nule
x(t<=D) = x_tr; %Se modifica valorile nule cu valori din semnalul original

figure(1);
plot(t,x),title('x(t)(linie solida) si reconstructia folosind N coeficienti (linie punctata)'); 
hold on;


for s = -N:N %Se face suma
    x_t = x_tr; %x_t semnalul realizat cu formula Seriei Fourier data
    
    x_t = x_t .* exp(-1i*s*w0*t_tr); 
    X(s+N+1) = 0; 
    for i = 1:length(t_tr)-1
        X(s+N+1) = X(s+N+1) + (t_tr(i+1)-t_tr(i)) * (x_t(i)+x_t(i+1))/2; %Se reconstruieste folosind coeficientii
    end
end

for i = 1:length(t) %Se face suma
    x_finit(i) = 0; 
    for s=-N:N
        x_finit(i) = x_finit(i) + (1/P) * X(s+51) * exp(1i*s*w0*t(i));  %Se reconstruieste folosind coeficientii
    end
end
plot(t,x_finit,'--'); %Afisarea semnalului reconstruit

figure(2);
w=-50*w0:w0:50*w0; %Ne folosim de w pentru a afisa spectrul functiei

stem(w/(2*pi),abs(X)),title('Spectrul lui x(t)'); %Afisarea spectrului

%Orice semnal periodic poate fi aproximat printr-o suma infinita de sinusuri si cosinusuri de diferite frecvente, fiecare avand un anumit coeficient ce reprezinta practic spectrul (amplitudinea pentru anumite frecvente).
%Semnalul reconstruit foloseste un numar finit de termeni si se apropie ca forma de semnalul original, insa prezinta o marja de eroare dependenta de numarul de coeficienti
%Semnalul poate fi aproximat printr-o suma de sinusoide, variatiile semnalului prezentand un caracter sinusoidal.
