clc;
clear v
%se genereaza un vector cu numere complexe
%rand genereaza un numar aleator intre -1 si 1
%se mai poate folosi si complex(y,x), unde x si y sunt numere generate
%aleator
n=2;
for x=1:1:n
    f=randn;
    v(x)=randn+f*1i;
end 

E3func(v,n)

