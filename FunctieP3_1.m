function[]=FunctieP3_1(t,nr)

%Se seteazaa nivelul si se apeleaza functia FunctieP3_2 pentru fiecare dintre nivele

niv = [ -1 1 ];
FunctieP3_2(t,nr,niv,1);

niv = [ -3 -1 1 3];
FunctieP3_2(t,nr,niv,2);

niv = [ -5 -3 -1 1 3 5];
FunctieP3_2(t,nr,niv,3);

niv = [ -7 -5 -3 -1 1 3 5 7];
FunctieP3_2(t,nr,niv,4);

end
