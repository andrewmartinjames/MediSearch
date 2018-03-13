  
%YellowSearch
load('Yellow.mat')
[m,n] = size(Yellow);

a = 1;
for i = 1:m
    if isequal(Yellow{i,1}, '003 - ECMO OR TRACH W MV >96 HRS OR PDX EXC FACE, MOUTH & NECK W MAJ O.R.'); %input text
        for e = 1:10
             ansArrayYellow{a,e}=num2str(Yellow{i,e});
        end
        a=a+1;
    end
end
%create new figure, create table with results of search
fig = uifigure;
t = uitable(fig,'Data',ansArrayYellow,'Position',[10 10 500 500])
t.ColumnName = {'DRG Definition','Provider ID','Provider Name','Provider Street Address','Provider City','Provider State','Provider Zip Code','Hospital Referral Region','Total Discharges','Average Covered Charges'};
          
          
          
