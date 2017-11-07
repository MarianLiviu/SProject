clc;
%generarea vectorului a
a=0.1:0.1:2; 

%se afla dimensiunea vectorului a pentru a putea face posbila inmultirea
%dintre a si b
n=length(a);

%se genereaza vectorul b, cu numarul de elemente n
b=linspace(1,1,n);

%din vectorul b facem un vector coloana
x=b(:);

%se realizeaza inmultireaa vectorilor
c=a*x;
d=x*a;

%pentru a realiza inmultirea element cu element a celor 2 vectori, ambii
%trebuie sa fie linie sau coloana. rezultatul este tot o linie sau o
%coloana
e=a.*b;




