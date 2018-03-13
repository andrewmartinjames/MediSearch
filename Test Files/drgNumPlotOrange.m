clc
load('stateArrayND');
load('stateArraySD');
load('stateArrayNE');
load('stateArrayKS');
load('stateArrayOK');
load('stateArrayTX');
load('stateArrayMO');
load('stateArrayIA');
load('stateArrayMN');
load('stateArrayWI');
load('stateArrayIL');


OrangeNames = {'ND';'SD';'NE';'KS';'OK';'TX';'MO';'IA';'MN';'WI';'IL'}
OrangeData = [size(stateArrayND); size(stateArraySD); size(stateArrayNE); size(stateArrayKS); size(stateArrayOK); size(stateArrayTX); size(stateArrayMO); 
                size(stateArrayIA); size(stateArrayMN); size(stateArrayWI); size(stateArrayIL); ] 
bar(OrangeData)
set(gca,'xticklabel',OrangeNames)
title('Orange Region number of DRG by State')