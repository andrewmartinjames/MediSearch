function varargout = taxes(varargin)
% taxes MATLAB code for taxes.fig
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @taxes_OpeningFcn, ...
                   'gui_OutputFcn',  @taxes_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before taxes is made visible.
function taxes_OpeningFcn(hObject, eventdata, handles, varargin)
% Choose default command line output for taxes
handles.output = hObject;
% create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
bg = imread('projMap.png'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');
% Update handles structure
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = taxes_OutputFcn(hObject, eventdata, handles) 
% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject1, eventdata, handles)
global drgYellow;
drgYellow = get(hObject1, 'string');


function edit2_Callback(hObject2, eventdata, handles)
global drgOrange;
drgOrange = get(hObject2, 'string');


function edit3_Callback(hObject3, eventdata, handles)
global drgBlue;
drgBlue = get(hObject3, 'string');


function edit4_Callback(hObject4, eventdata, handles)
global drgGreen;
drgGreen = get(hObject4, 'string');

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global drgYellow;
load('Yellow.mat');
[m,n] = size(Yellow);
a = 1;
for i = 1:m
    stringThing = Yellow {i,1};
    if strcmp(stringThing,drgYellow) %input text
        for e = 1:10
            global ansArrayYellow;
            ansArrayYellow{a,e}=num2str(Yellow{i,e});
        end
        a=a+1;
    end
end
%create new figure, create table with results of search
fig = uifigure;
global ansArrayYellow;
t = uitable(fig,'Data',ansArrayYellow,'Position',[10 10 500 500]);
t.ColumnName = {'DRG Definition','Provider Name','Provider Street Address','Provider City','Provider State','Provider Zip Code','Hospital Referral Region','Total Discharges','Average Covered Charges', 'Average Total Payments'};
          
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


YellowNames = {'WA';'OR';'CA';'NV';'ID';'MT';'CO';'UT';'AZ';'NM';'HI';'AK';'WY'};
YellowData = [size(stateArrayWA); size(stateArrayOR); size(stateArrayCA); size(stateArrayNV); size(stateArrayID); size(stateArrayMT); size(stateArrayCO); 
                size(stateArrayUT); size(stateArrayAZ); size(stateArrayNM); size(stateArrayHI); size(stateArrayAK); size(stateArrayWY)];
f = figure;
bar(YellowData);
set(gca,'xticklabel',YellowNames);
title('Yellow Region number of DRG by State');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global drgOrange;
load('Orange.mat');
[m,n] = size(Orange);
a = 1;
for i = 1:m
    stringThing = Orange {i,1};
    if strcmp(stringThing,drgOrange) %input text
        for e = 1:10
            global ansArrayOrange;
            ansArrayOrange{a,e}=num2str(Orange{i,e});
        end
        a=a+1;
    end
end
%create new figure, create table with results of search
fig = uifigure;
global ansArrayOrange;
t = uitable(fig,'Data',ansArrayOrange,'Position',[10 10 500 500]);
t.ColumnName = {'DRG Definition','Provider Name','Provider Street Address','Provider City','Provider State','Provider Zip Code','Hospital Referral Region','Total Discharges','Average Covered Charges', 'Average Total Payments'};
          
load('stateArrayND');
load('stateArraySD');
load('stateArrayNE');
load('stateArrayKS');
load('stateArrayOK');
load('stateArrayTX');
load('stateArrayMN');
load('stateArrayIA');
load('stateArrayMO');
load('stateArrayWI');
load('stateArrayIL');

OrangeNames = {'ND';'SD';'NE';'KS';'OK';'TX';'MN';'IA';'MO';'WI';'IL'};
OrangeData = [size(stateArrayND); size(stateArraySD); size(stateArrayNE); size(stateArrayKS); size(stateArrayOK); size(stateArrayTX); size(stateArrayMN); 
                size(stateArrayIA); size(stateArrayMO); size(stateArrayWI); size(stateArrayIL)];
f = figure;
bar(OrangeData);
set(gca,'xticklabel',OrangeNames);
title('Orange Region number of DRG by State');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
global drgBlue;
load('Blue.mat');
[m,n] = size(Blue);
a = 1;
for i = 1:m
    stringThing = Blue {i,1};
    if strcmp(stringThing,drgBlue) %input text
        for e = 1:10
            global ansArrayBlue;
            ansArrayBlue{a,e}=num2str(Blue{i,e});
        end
        a=a+1;
    end
end
%create new figure, create table with results of search
fig = uifigure;
global ansArrayBlue;
t = uitable(fig,'Data',ansArrayBlue,'Position',[10 10 500 500]);
t.ColumnName = {'DRG Definition','Provider Name','Provider Street Address','Provider City','Provider State','Provider Zip Code','Hospital Referral Region','Total Discharges','Average Covered Charges', 'Average Total Payments'};
          
load('stateArrayMI');
load('stateArrayIN');
load('stateArrayOH');
load('stateArrayPA');
load('stateArrayNY');
load('stateArrayCT');
load('stateArrayRI');
load('stateArrayMA');
load('stateArrayVT');
load('stateArrayNH');
load('stateArrayME');
load('stateArrayNJ');
load('stateArrayDE');
load('stateArrayMD');

BlueNames = {'MI';'IN';'OH';'PA';'NY';'CT';'RI';'MA';'VT';'NH';'ME';'NJ';'DE';'MD'};
BlueData = [size(stateArrayMI); size(stateArrayIN); size(stateArrayOH); size(stateArrayPA); size(stateArrayNY); size(stateArrayCT); size(stateArrayRI); 
                size(stateArrayMA); size(stateArrayVT); size(stateArrayNH); size(stateArrayME); size(stateArrayNJ); size(stateArrayDE); size(stateArrayMD)];
f = figure;
bar(BlueData);
set(gca,'xticklabel',BlueNames);
title('Blue Region number of DRG by State');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
global drgGreen;
load('Green.mat');
[m,n] = size(Green);
a = 1;
for i = 1:m
    stringThing = Green {i,1};
    if strcmp(stringThing,drgGreen) %input text
        for e = 1:10
            global ansArrayGreen;
            ansArrayGreen{a,e}=num2str(Green{i,e});
        end
        a=a+1;
    end
end
%create new figure, create table with results of search
fig = uifigure;
global ansArrayGreen;
t = uitable(fig,'Data',ansArrayGreen,'Position',[10 10 500 500]);
t.ColumnName = {'DRG Definition','Provider Name','Provider Street Address','Provider City','Provider State','Provider Zip Code','Hospital Referral Region','Total Discharges','Average Covered Charges', 'Average Total Payments'};
          
load('stateArrayVA');
load('stateArrayWV');
load('stateArrayKY');
load('stateArrayAR');
load('stateArrayTN');
load('stateArrayLA');
load('stateArrayMS');
load('stateArrayAL');
load('stateArrayGA');
load('stateArrayNC');
load('stateArraySC');
load('stateArrayFL');

GreenNames = {'VA';'WV';'KY';'AR';'TN';'LA';'MS';'AL';'GA';'NC';'SC';'FL'};
GreenData = [size(stateArrayVA); size(stateArrayWV); size(stateArrayKY); size(stateArrayAR); size(stateArrayTN); size(stateArrayLA); size(stateArrayMS); 
                size(stateArrayAL); size(stateArrayGA); size(stateArrayNC); size(stateArraySC); size(stateArrayFL)];
f = figure;
bar(GreenData);
set(gca,'xticklabel',GreenNames);
title('Green Region number of DRG by State');


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
