
clc; clear all;
load('stateArrayIN');
load('stateArrayOH');
load('stateArrayMI');
load('stateArrayPA');
load('stateArrayNJ');
load('stateArrayNY');
load('stateArrayRI');
load('stateArrayVT');
load('stateArrayCT');
load('stateArrayMD');
load('stateArrayNH');
load('stateArrayME');
load('stateArrayMA');
load('stateArrayDE');


BlueNames = {'IN';'OH';'MI';'PA';'NJ';'NY';'RI';'VT';'CT';'MD';'NH';'ME';'MA';'DE'}
BlueData = [size(stateArrayIN); size(stateArrayOH); size(stateArrayMI); size(stateArrayPA); size(stateArrayNJ); size(stateArrayNY); size(stateArrayRI); 
                size(stateArrayVT); size(stateArrayCT); size(stateArrayMD); size(stateArrayNH); size(stateArrayME); size(stateArrayMA); size(stateArrayDE)] 
bar(BlueData)
set(gca,'xticklabel',BlueNames)
title('Blue Region number of DRG by State')