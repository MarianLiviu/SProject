clc;
%se genereaza vectorul 
v=randn(1,10);

%parcurgand vectorul, afisam cu ajutorul conditiei v(i)<0, valorile
%negative
for i=1:1:length(v)
    if v(i)<0
        v(i)
    end    
 end 
