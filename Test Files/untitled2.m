%YellowSearch
load('Yellow.mat')
[m,n] = size(Yellow);
y = input('Enter Full DRG Definition')
a = 1;
for i = 1:m
    if isequal(Yellow{i,1}, y); %input text
          
        for e = 1:10
            ansArrayYellow{a,e}=Yellow{i,e};
           
        end
        a=a+1;
    end
end
