
load('stateArrayWA');
load('stateArrayOR');
load('stateArrayCA');
load('stateArrayNV');
load('stateArrayID');
load('stateArrayMT');
load('stateArrayCO');
load('stateArrayUT');
load('stateArrayAZ');
load('stateArrayNM');
load('stateArrayHI');
load('stateArrayAK');
load('stateArrayWY');
load('stateArrayWY');


YellowNames = {'WA';'OR';'CA';'NV';'ID';'MT';'CO';'UT';'AZ';'NM';'HI';'AK';'WY'}
YellowData = [size(stateArrayWA); size(stateArrayOR); size(stateArrayCA); size(stateArrayNV); size(stateArrayID); size(stateArrayMT); size(stateArrayCO); 
                size(stateArrayUT); size(stateArrayAZ); size(stateArrayNM); size(stateArrayHI); size(stateArrayAK); size(stateArrayWY)] 
f = figure
bar(YellowData)
set(gca,'xticklabel',YellowNames)
title('Yellow Region number of DRG by State')