function[T] = E5func(t,s,checkIfCos)

if checkIfCos == 0
    
    %a) 
    %Se reprezinta semnalul intr-o retea de linii
    plot(t,s,'.-'),xlabel('Timp [s]'),grid

    %b)
    %cautam varfurile graficului iar diferenta valorilor este perioada
    %semnalului
    [idx,idx] = findpeaks(s);
    T = t(idx(2))-t(idx(1));

else
    %c)
    %recreez primul semnal sinusoidal si il afisez cu semnalul
    %cosinusoidal cu culoare rosie
    F1 = 50;
    s1 = 2*sin(2*pi*F1*t);
    plot(t,s,t,s1),xlabel('Timp [s]'),color('red'),grid
end

end
