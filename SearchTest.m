%YellowSearch
load('Yellow.mat')
[m,n] = size(Yellow);

a = 1;
for i = 1:m
    if isequal(Yellow{i,1}, '003 - ECMO OR TRACH W MV >96 HRS OR PDX EXC FACE, MOUTH & NECK W MAJ O.R.');
          
        for e = 1:10
            ansArrayYellow{a,e}=Yellow{i,e};
           
        end
        a=a+1;
    end
end
