clc, clear all;
x  = 0:0.01:20; 
y1 = 200*exp(-0.05*x).*sin(x); 
y2 = 0.8*exp(-0.5*x).*sin(10*x); 
plot(x,y1,x,y2)
yyaxis right
yyaxis left
title('Plots of y1 and y2')
xlabel('X Values')
ylabel('Y Values')
