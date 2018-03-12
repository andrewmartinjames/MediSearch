load('Green.mat')
[m,n] = size(Green);

a = 1;
for i = 1:m
    if isequal(Green{i,1}, '003 - ECMO OR TRACH W MV >96 HRS OR PDX EXC FACE, MOUTH & NECK W MAJ O.R.');
          
        for e = 1:10
            ansArrayGreen{a,e}=Green{i,e};
           
        end
        a=a+1;
    end
end
