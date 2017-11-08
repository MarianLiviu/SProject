function[]=FunctieP3_2(t,nr,niv,k)

figure((nr-1)*4+k)
hold on
title('Semnal dreptunghiular multinivel aleator'),xlabel('Timp [s]'),ylabel('A [V]')

for n=0:0.25:40
    y = datasample(niv, 1);
    plot(t, y*rectpuls(t-n, 0.25))
    %Functia rectpuls genereaza un impuls unitate dreptunghiular
end

end