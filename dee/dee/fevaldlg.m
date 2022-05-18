function fevaldlg(TitleStr, PromptStr, DefaultStr, OKFunc),
%FEVALDLG Dialog used to feval an expression.
%   FEVALDLG Creates a simple input dialog which accepts a legal righthand
%   side MATLAB expression and executes the function, OKFunc, with
%   the resultant passed as an argument.  The DefaultStr is the default text
%   to be placed in the edit object.

%   Copyright 1990-2002 The MathWorks, Inc.

% Jay Torgerson
% December, 1994


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Snag calling figure's handle and calling object's handle
% for posterity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OriginalObj = gco;
if isempty(OriginalObj)
    OriginalObj = gcbo;
end

if ~isempty(OriginalObj)
  OriginalFig = gcf;
end

%%%%%%%%%%%%%%%%%%%%%%%%
% Check input arg types.
%%%%%%%%%%%%%%%%%%%%%%%%
if (nargin < 4)
    errordlg(getString(message('Simulink:dee:dialogFourArgsNeededForFevaldlg')),getString(message('Simulink:dee:FevaldlgError')),'on');
    return;
end
if (~isstr(TitleStr)),
  errordlg(getString(message('Simulink:dee:dialogAllArgsToFevaldlgMustBeStrings')),getString(message('Simulink:dee:FevaldlgError')),'on');
  return;
end
if (~isstr(PromptStr)),
  errordlg(getString(message('Simulink:dee:dialogAllArgsToFevaldlgMustBeStrings')),getString(message('Simulink:dee:FevaldlgError')),'on');
  return;
end
if (~isstr(DefaultStr)),
  errordlg(getString(message('Simulink:dee:dialogAllArgsToFevaldlgMustBeStrings')),getString(message('Simulink:dee:FevaldlgError')),'on');
  return;
end
if (~isstr(OKFunc)),
  errordlg(getString(message('Simulink:dee:dialogAllArgsToFevaldlgMustBeStrings')),getString(message('Simulink:dee:FevaldlgError')),'on');
  return;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bring this figure forward if it exists.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[flag, fig] = figflag(TitleStr);
if flag,
  return;
end


%%%%%%%%%%%%%%%%%%%%%
% Which machine?
%%%%%%%%%%%%%%%%%%%%%
PC   = 0;
comp = computer;
if (strcmp(comp(1:2),'PC')),
  PC = 1;
end


%%%%%%%%%%%%%%%%%%%
% Create the figure
%%%%%%%%%%%%%%%%%%%

if (PC),
  figW = 300;
  figH = 80;
else
  figW = 330;
  figH = 90;
end



% Try to center this guy.
if (isa(OriginalFig, 'matlab.ui.Figure')&& OriginalFig.isvalid || islogical(OriginalFig) && OriginalFig)
   OrigPos = get(OriginalFig,'Position');
   WidthDiff  = OrigPos(3)-figW;
   HeightDiff = OrigPos(4)-figH;

   if (WidthDiff > 0),
     figX = OrigPos(1)+WidthDiff/2;
   else
     figX = OrigPos(1)+30;
   end

   if (HeightDiff > 0),
     figY = OrigPos(2)+HeightDiff/2;
   else
     figY = OrigPos(2)+30;
   end
else
  figX = 200;
  figY = 400;
end

DefaultColor = [.75 .75 .75];
fig = figure(...
    'Color',DefaultColor,...
    'Colormap',[],...
    'HandleVisibility','callback',...
    'Menubar','none',...
    'Name',TitleStr, ...
    'Resize','off',...
    'Visible','off',...
    'Position',[figX figY figW figH],...
    'UserData',OriginalFig,...
    'NumberTitle','off');

%%%%%%%%%%%%%%%%%%%
% Layout parameters.
%%%%%%%%%%%%%%%%%%%
marginX = 10;
marginY = 10;
ButtonH = 20;
ButtonW = 60;
NumOfButtons  = 2;
ButtonSpacing = 30;

SpaceRequired  = NumOfButtons*(ButtonW + ButtonSpacing) - ButtonSpacing;
SpaceAvailable = figW - 2*marginX;
LeftOver       = SpaceAvailable-SpaceRequired;

bX      = ones(1,NumOfButtons) * ButtonW + ButtonSpacing;
bX(1)   = marginX + LeftOver/2;
bX      = cumsum(bX);
ButtonY = marginY;

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create the Cancel button.
%%%%%%%%%%%%%%%%%%%%%%%%%%
uicontrol(...
    'Style','pushbutton',...
    'String',getString(message('Simulink:dee:buttonCancel')),...
    'Position', [bX(2) ButtonY ButtonW ButtonH],...
    'Callback','close');

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create the OK button.
% %%%%%%%%%%%%%%%%%%%%%%%%
ErrorStr   = ['errordlg(''',getString(message('Simulink:dee:NotAValidExpression')),''',''',getString(message('Simulink:dee:dialogMATLABError')),''');'];
ExecuteStr = ['if (isnan(deething)), ', ErrorStr,' clear deething; else, ',OKFunc,'(deething); [deething, ans]=figflag(''',TitleStr,''',1); if (deething), clear deething; close(ans); end, end';];
OKCB = [ ...
        'deething = findobj(gcf,''Style'',''edit'');',...
        'deething = get(deething,''String'');',...
        'deething = eval(deething,''nan'');',...
         ExecuteStr];

uicontrol(...
    'Style','pushbutton',...
    'String',getString(message('Simulink:dee:buttonOK')),...
    'position', [bX(1) ButtonY ButtonW ButtonH],...
    'callback',OKCB);

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create the Text object.
%%%%%%%%%%%%%%%%%%%%%%%%%%
TextX = marginX;
TextW = figW-2*marginX;
if (PC)
  TextH = 15;
else
  TextH = 20;
end
TextY = figH-marginY/2-ButtonH;
if (nargin < 2),
  PromptStr = getString(message('Simulink:dee:promptEnterExpression'));
elseif (~isstr(PromptStr)),
  PromptStr = getString(message('Simulink:dee:promptEnterExpression'));
end
uicontrol(...
    'Style','Text',...
    'String', PromptStr,...
    'Position', [TextX TextY TextW TextH],...
    'HorizontalAlignment','Left',...
    'Background',DefaultColor);

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create the Edit object.
%%%%%%%%%%%%%%%%%%%%%%%%%%
EditX = TextX;
EditW = TextW;
EditH = TextH;
EditY = TextY - EditH;
if (nargin < 3),
  DefaultStr = '[]';
elseif (~isstr(DefaultStr)),
  DefaultStr = '[]';
end

uicontrol(...
    'Style','Edit',...
    'String',DefaultStr,...
    'Position', [EditX EditY EditW EditH],...
    'HorizontalAlign','Left',...
    'UserData',OriginalObj,...
    'Background','White');

set(fig,'Visible','On');
