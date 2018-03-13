function varargout = mediSearch(varargin)
% mediSearch MATLAB code for mediSearch.fig
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mediSearch_OpeningFcn, ...
                   'gui_OutputFcn',  @mediSearch_OutputFcn, ...
                   'gui_LayoutFcn',  @mediSearch_LayoutFcn, ...
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


% --- Executes just before mediSearch is made visible.
function mediSearch_OpeningFcn(hObject, eventdata, handles, varargin)
% Choose default command line output for mediSearch
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
function varargout = mediSearch_OutputFcn(hObject, eventdata, handles) 
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


% --- Creates and returns a handle to the GUI figure. 
function h1 = mediSearch_LayoutFcn(policy)
% policy - create a new figure or use a singleton. 'new' or 'reuse'.

persistent hsingleton;
if strcmpi(policy, 'reuse') & ishandle(hsingleton)
    h1 = hsingleton;
    return;
end

appdata = [];
appdata.GUIDEOptions = struct(...
    'active_h', [], ...
    'taginfo', struct(...
    'figure', 2, ...
    'text', 2, ...
    'pushbutton', 5, ...
    'listbox', 2, ...
    'edit', 6), ...
    'override', 0, ...
    'release', [], ...
    'resize', 'none', ...
    'accessibility', 'callback', ...
    'mfile', 1, ...
    'callbacks', 1, ...
    'singleton', 1, ...
    'syscolorfig', 1, ...
    'blocking', 0, ...
    'lastSavedFile', '/Users/andrewjames/Documents/GitHub/Medicare-Provider-Search-Tool/mediSearch.m', ...
    'lastFilename', '/Users/andrewjames/Documents/GitHub/Medicare-Provider-Search-Tool/taxes.fig');
appdata.lastValidTag = 'figure1';
appdata.GUIDELayoutEditor = [];
appdata.initTags = struct(...
    'handle', [], ...
    'tag', 'figure1');

h1 = figure(...
'Units','characters',...
'Position',[181.066666666667 69.4358974358974 149.333333333333 43.0769230769231],...
'PositionMode',get(0,'defaultfigurePositionMode'),...
'Visible',get(0,'defaultfigureVisible'),...
'Color',get(0,'defaultfigureColor'),...
'IntegerHandle','off',...
'MenuBar','none',...
'Name','taxes',...
'NumberTitle','off',...
'Tag','figure1',...
'Resize','off',...
'PaperPosition',get(0,'defaultfigurePaperPosition'),...
'ScreenPixelsPerInchMode','manual',...
'HandleVisibility','callback',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'pushbutton1';

h2 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Search the West',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[21.5 29.6666666666667 16.8333333333333 1.4],...
'BackgroundColor',[0.5 0.5 0.5],...
'Callback',@(hObject,eventdata)mediSearch('pushbutton1_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Tag','pushbutton1',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'pushbutton2';

h3 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Search the Midwest',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[66.5 26.3333333333333 18 1.4],...
'BackgroundColor',[0.5 0.5 0.5],...
'Callback',@(hObject,eventdata)mediSearch('pushbutton2_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Tag','pushbutton2',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'pushbutton3';

h4 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Search the Northeast',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[108.166666666667 25.3333333333333 19.3333333333333 1.4],...
'BackgroundColor',[0.5 0.5 0.5],...
'Callback',@(hObject,eventdata)mediSearch('pushbutton3_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Tag','pushbutton3',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'pushbutton4';

h5 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String','Search the Southeast',...
'Style',get(0,'defaultuicontrolStyle'),...
'Position',[91.5 13 19.8333333333333 1.4],...
'BackgroundColor',[0.5 0.5 0.5],...
'Callback',@(hObject,eventdata)mediSearch('pushbutton4_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'Tag','pushbutton4',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'edit1';

h6 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String',{  'Edit Text' },...
'Style','edit',...
'Position',[21.5 31.5333333333333 11.6666666666667 1.46666666666667],...
'Callback',@(hObject,eventdata)mediSearch('edit1_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)mediSearch('edit1_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','edit1');

appdata = [];
appdata.lastValidTag = 'edit2';

h7 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String',{  'Edit Text' },...
'Style','edit',...
'Position',[71.5 28.2 11.6666666666667 1.46666666666667],...
'Callback',@(hObject,eventdata)mediSearch('edit2_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)mediSearch('edit2_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','edit2');

appdata = [];
appdata.lastValidTag = 'edit3';

h8 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String',{  'Edit Text' },...
'Style','edit',...
'Position',[121.5 29 11.6666666666667 1.46666666666667],...
'Callback',@(hObject,eventdata)mediSearch('edit3_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)mediSearch('edit3_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','edit3');

appdata = [];
appdata.lastValidTag = 'edit4';

h9 = uicontrol(...
'Parent',h1,...
'FontUnits',get(0,'defaultuicontrolFontUnits'),...
'Units','characters',...
'String',{  'Edit Text' },...
'Style','edit',...
'Position',[99.8333333333333 16.3333333333333 11.6666666666667 1.46666666666667],...
'Callback',@(hObject,eventdata)mediSearch('edit4_Callback',hObject,eventdata,guidata(hObject)),...
'Children',[],...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)mediSearch('edit4_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','edit4');


hsingleton = h1;


% --- Set application data first then calling the CreateFcn. 
function local_CreateFcn(hObject, eventdata, createfcn, appdata)

if ~isempty(appdata)
   names = fieldnames(appdata);
   for i=1:length(names)
       name = char(names(i));
       setappdata(hObject, name, getfield(appdata,name));
   end
end

if ~isempty(createfcn)
   if isa(createfcn,'function_handle')
       createfcn(hObject, eventdata);
   else
       eval(createfcn);
   end
end


% --- Handles default GUIDE GUI creation and callback dispatch
function varargout = gui_mainfcn(gui_State, varargin)

gui_StateFields =  {'gui_Name'
    'gui_Singleton'
    'gui_OpeningFcn'
    'gui_OutputFcn'
    'gui_LayoutFcn'
    'gui_Callback'};
gui_Mfile = '';
for i=1:length(gui_StateFields)
    if ~isfield(gui_State, gui_StateFields{i})
        error(message('MATLAB:guide:StateFieldNotFound', gui_StateFields{ i }, gui_Mfile));
    elseif isequal(gui_StateFields{i}, 'gui_Name')
        gui_Mfile = [gui_State.(gui_StateFields{i}), '.m'];
    end
end

numargin = length(varargin);

if numargin == 0
    % MEDISEARCH
    % create the GUI only if we are not in the process of loading it
    % already
    gui_Create = true;
elseif local_isInvokeActiveXCallback(gui_State, varargin{:})
    % MEDISEARCH(ACTIVEX,...)
    vin{1} = gui_State.gui_Name;
    vin{2} = [get(varargin{1}.Peer, 'Tag'), '_', varargin{end}];
    vin{3} = varargin{1};
    vin{4} = varargin{end-1};
    vin{5} = guidata(varargin{1}.Peer);
    feval(vin{:});
    return;
elseif local_isInvokeHGCallback(gui_State, varargin{:})
    % MEDISEARCH('CALLBACK',hObject,eventData,handles,...)
    gui_Create = false;
else
    % MEDISEARCH(...)
    % create the GUI and hand varargin to the openingfcn
    gui_Create = true;
end

if ~gui_Create
    % In design time, we need to mark all components possibly created in
    % the coming callback evaluation as non-serializable. This way, they
    % will not be brought into GUIDE and not be saved in the figure file
    % when running/saving the GUI from GUIDE.
    designEval = false;
    if (numargin>1 && ishghandle(varargin{2}))
        fig = varargin{2};
        while ~isempty(fig) && ~ishghandle(fig,'figure')
            fig = get(fig,'parent');
        end
        
        designEval = isappdata(0,'CreatingGUIDEFigure') || (isscalar(fig)&&isprop(fig,'GUIDEFigure'));
    end
        
    if designEval
        beforeChildren = findall(fig);
    end
    
    % evaluate the callback now
    varargin{1} = gui_State.gui_Callback;
    if nargout
        [varargout{1:nargout}] = feval(varargin{:});
    else       
        feval(varargin{:});
    end
    
    % Set serializable of objects created in the above callback to off in
    % design time. Need to check whether figure handle is still valid in
    % case the figure is deleted during the callback dispatching.
    if designEval && ishghandle(fig)
        set(setdiff(findall(fig),beforeChildren), 'Serializable','off');
    end
else
    if gui_State.gui_Singleton
        gui_SingletonOpt = 'reuse';
    else
        gui_SingletonOpt = 'new';
    end

    % Check user passing 'visible' P/V pair first so that its value can be
    % used by oepnfig to prevent flickering
    gui_Visible = 'auto';
    gui_VisibleInput = '';
    for index=1:2:length(varargin)
        if length(varargin) == index || ~ischar(varargin{index})
            break;
        end

        % Recognize 'visible' P/V pair
        len1 = min(length('visible'),length(varargin{index}));
        len2 = min(length('off'),length(varargin{index+1}));
        if ischar(varargin{index+1}) && strncmpi(varargin{index},'visible',len1) && len2 > 1
            if strncmpi(varargin{index+1},'off',len2)
                gui_Visible = 'invisible';
                gui_VisibleInput = 'off';
            elseif strncmpi(varargin{index+1},'on',len2)
                gui_Visible = 'visible';
                gui_VisibleInput = 'on';
            end
        end
    end
    
    % Open fig file with stored settings.  Note: This executes all component
    % specific CreateFunctions with an empty HANDLES structure.

    
    % Do feval on layout code in m-file if it exists
    gui_Exported = ~isempty(gui_State.gui_LayoutFcn);
    % this application data is used to indicate the running mode of a GUIDE
    % GUI to distinguish it from the design mode of the GUI in GUIDE. it is
    % only used by actxproxy at this time.   
    setappdata(0,genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]),1);
    if gui_Exported
        gui_hFigure = feval(gui_State.gui_LayoutFcn, gui_SingletonOpt);

        % make figure invisible here so that the visibility of figure is
        % consistent in OpeningFcn in the exported GUI case
        if isempty(gui_VisibleInput)
            gui_VisibleInput = get(gui_hFigure,'Visible');
        end
        set(gui_hFigure,'Visible','off')

        % openfig (called by local_openfig below) does this for guis without
        % the LayoutFcn. Be sure to do it here so guis show up on screen.
        movegui(gui_hFigure,'onscreen');
    else
        gui_hFigure = local_openfig(gui_State.gui_Name, gui_SingletonOpt, gui_Visible);
        % If the figure has InGUIInitialization it was not completely created
        % on the last pass.  Delete this handle and try again.
        if isappdata(gui_hFigure, 'InGUIInitialization')
            delete(gui_hFigure);
            gui_hFigure = local_openfig(gui_State.gui_Name, gui_SingletonOpt, gui_Visible);
        end
    end
    if isappdata(0, genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]))
        rmappdata(0,genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]));
    end

    % Set flag to indicate starting GUI initialization
    setappdata(gui_hFigure,'InGUIInitialization',1);

    % Fetch GUIDE Application options
    gui_Options = getappdata(gui_hFigure,'GUIDEOptions');
    % Singleton setting in the GUI MATLAB code file takes priority if different
    gui_Options.singleton = gui_State.gui_Singleton;

    if ~isappdata(gui_hFigure,'GUIOnScreen')
        % Adjust background color
        if gui_Options.syscolorfig
            set(gui_hFigure,'Color', get(0,'DefaultUicontrolBackgroundColor'));
        end

        % Generate HANDLES structure and store with GUIDATA. If there is
        % user set GUI data already, keep that also.
        data = guidata(gui_hFigure);
        handles = guihandles(gui_hFigure);
        if ~isempty(handles)
            if isempty(data)
                data = handles;
            else
                names = fieldnames(handles);
                for k=1:length(names)
                    data.(char(names(k)))=handles.(char(names(k)));
                end
            end
        end
        guidata(gui_hFigure, data);
    end

    % Apply input P/V pairs other than 'visible'
    for index=1:2:length(varargin)
        if length(varargin) == index || ~ischar(varargin{index})
            break;
        end

        len1 = min(length('visible'),length(varargin{index}));
        if ~strncmpi(varargin{index},'visible',len1)
            try set(gui_hFigure, varargin{index}, varargin{index+1}), catch break, end
        end
    end

    % If handle visibility is set to 'callback', turn it on until finished
    % with OpeningFcn
    gui_HandleVisibility = get(gui_hFigure,'HandleVisibility');
    if strcmp(gui_HandleVisibility, 'callback')
        set(gui_hFigure,'HandleVisibility', 'on');
    end

    feval(gui_State.gui_OpeningFcn, gui_hFigure, [], guidata(gui_hFigure), varargin{:});

    if isscalar(gui_hFigure) && ishghandle(gui_hFigure)
        % Handle the default callbacks of predefined toolbar tools in this
        % GUI, if any
        guidemfile('restoreToolbarToolPredefinedCallback',gui_hFigure); 
        
        % Update handle visibility
        set(gui_hFigure,'HandleVisibility', gui_HandleVisibility);

        % Call openfig again to pick up the saved visibility or apply the
        % one passed in from the P/V pairs
        if ~gui_Exported
            gui_hFigure = local_openfig(gui_State.gui_Name, 'reuse',gui_Visible);
        elseif ~isempty(gui_VisibleInput)
            set(gui_hFigure,'Visible',gui_VisibleInput);
        end
        if strcmpi(get(gui_hFigure, 'Visible'), 'on')
            figure(gui_hFigure);
            
            if gui_Options.singleton
                setappdata(gui_hFigure,'GUIOnScreen', 1);
            end
        end

        % Done with GUI initialization
        if isappdata(gui_hFigure,'InGUIInitialization')
            rmappdata(gui_hFigure,'InGUIInitialization');
        end

        % If handle visibility is set to 'callback', turn it on until
        % finished with OutputFcn
        gui_HandleVisibility = get(gui_hFigure,'HandleVisibility');
        if strcmp(gui_HandleVisibility, 'callback')
            set(gui_hFigure,'HandleVisibility', 'on');
        end
        gui_Handles = guidata(gui_hFigure);
    else
        gui_Handles = [];
    end

    if nargout
        [varargout{1:nargout}] = feval(gui_State.gui_OutputFcn, gui_hFigure, [], gui_Handles);
    else
        feval(gui_State.gui_OutputFcn, gui_hFigure, [], gui_Handles);
    end

    if isscalar(gui_hFigure) && ishghandle(gui_hFigure)
        set(gui_hFigure,'HandleVisibility', gui_HandleVisibility);
    end
end

function gui_hFigure = local_openfig(name, singleton, visible)

% openfig with three arguments was new from R13. Try to call that first, if
% failed, try the old openfig.
if nargin('openfig') == 2
    % OPENFIG did not accept 3rd input argument until R13,
    % toggle default figure visible to prevent the figure
    % from showing up too soon.
    gui_OldDefaultVisible = get(0,'defaultFigureVisible');
    set(0,'defaultFigureVisible','off');
    gui_hFigure = matlab.hg.internal.openfigLegacy(name, singleton);
    set(0,'defaultFigureVisible',gui_OldDefaultVisible);
else
    % Call version of openfig that accepts 'auto' option"
    gui_hFigure = matlab.hg.internal.openfigLegacy(name, singleton, visible);  
%     %workaround for CreateFcn not called to create ActiveX
%         peers=findobj(findall(allchild(gui_hFigure)),'type','uicontrol','style','text');    
%         for i=1:length(peers)
%             if isappdata(peers(i),'Control')
%                 actxproxy(peers(i));
%             end            
%         end
end

function result = local_isInvokeActiveXCallback(gui_State, varargin)

try
    result = ispc && iscom(varargin{1}) ...
             && isequal(varargin{1},gcbo);
catch
    result = false;
end

function result = local_isInvokeHGCallback(gui_State, varargin)

try
    fhandle = functions(gui_State.gui_Callback);
    result = ~isempty(findstr(gui_State.gui_Name,fhandle.file)) || ...
             (ischar(varargin{1}) ...
             && isequal(ishghandle(varargin{2}), 1) ...
             && (~isempty(strfind(varargin{1},[get(varargin{2}, 'Tag'), '_'])) || ...
                ~isempty(strfind(varargin{1}, '_CreateFcn'))) );
catch
    result = false;
end


