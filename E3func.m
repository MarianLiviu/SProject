function [ma,vs,M]=E3func(x,p)
ma=0;
s=0;
k=0;
%parcurgem vectorul si adunam intr-o variabila toate partile reale ale numerelor complexe
%in acelasi timp tinem si un contor a cate numere au fost adunate
for z=1:1:p
    s=s+real(x(z));
    k=k+1;
end
%se realizeaza media aritmetica
ma=s/k;

for c=1:1:p
    vs(c)=x(c)^2;
end

vs(c)

%x.' este vectorul transpus
M=x*x.'

end
