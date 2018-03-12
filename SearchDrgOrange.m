load('Orange.mat')
[m,n] = size(Orange);

a = 1;
for i = 1:m
    if isequal(Orange{i,1}, '003 - ECMO OR TRACH W MV >96 HRS OR PDX EXC FACE, MOUTH & NECK W MAJ O.R.');
          
        for e = 1:10
            ansArrayOrange{a,e}=Orange{i,e};
           
        end
        a=a+1;
    end
end
