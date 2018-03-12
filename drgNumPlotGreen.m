clc; clear all;
load('stateArrayWV');
load('stateArrayVA');
load('stateArrayKY');
load('stateArrayTN');
load('stateArrayNC');
load('stateArraySC');
load('stateArrayAR');
load('stateArrayLA');
load('stateArrayMS');
load('stateArrayAL');
load('stateArrayGA');
load('stateArrayFL');



GreenNames = {'WV';'VA';'KY';'TN';'NC';'SC';'AR';'LA';'MS';'AL';'GA';'FL'}
GreenData = [size(stateArrayWV); size(stateArrayVA); size(stateArrayKY); size(stateArrayTN); size(stateArrayNC); size(stateArraySC); size(stateArrayAR); 
                size(stateArrayLA); size(stateArrayMS); size(stateArrayAL); size(stateArrayGA); size(stateArrayFL)] 
bar(GreenData)
set(gca,'xticklabel',GreenNames)
title('Green Region number of DRG by State')