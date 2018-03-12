load('Blue.mat')
[m,n] = size(Blue);

a = 1;
for i = 1:m
    if isequal(Blue{i,1}, '003 - ECMO OR TRACH W MV >96 HRS OR PDX EXC FACE, MOUTH & NECK W MAJ O.R.'); %input text
          
        for e = 1:10
            ansArrayBlue{a,e}=Blue{i,e};
           
        end
        a=a+1;
    end
end
