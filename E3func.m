function [ma,vs,M]=E3func(x,p)
ma=0;
s=0;
k=0;
for z=1:1:p
    s=s+real(x(z));
    k=k+1;
end

ma=s/k;

for c=1:1:p
    vs(c)=x(c)^2;
end

vs(c)

%x.' este vectorul transpus
M=x*x.'

end
