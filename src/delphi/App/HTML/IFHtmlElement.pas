unit IFHtmlElement;

interface

uses
  Classes, SysUtils, IFHTTP;

type
  TIFHtmlElement = class;
  TClassIFHtmlElement = class of TIFHtmlElement;

  TIFHtmlElementList = class(TList)
    public
      function Render:string;
    published
  end;

  { TIFHtmlElement }

  TIFHtmlElement = class(TObject)
  private
    FAccesskey: string;
    FAriaControls: String;
    FAriaLabelledby: String;
    FAriaSelected: String;
    FContenteditable: string;
    FData_: string;
    FDir: string;
    FDraggable: string;
    FHidden: string;
    FID: String;
    FLang: string;
    FRole: String;
    FSpellcheck: string;
    FStyle: string;
    FStyleClass: string;
    FElements: TIFHtmlElementList;
    FTabIndex: string;
    FTitle: string;
    FTranslate: string;
  public
    function add(AClassType : TClassIFHtmlElement) : TIFHtmlElement;
    constructor Create; overload; virtual;
    constructor Create(Element : TObject); overload; virtual;
    function Render:string; virtual;
    property Elements : TIFHtmlElementList read FElements write FElements;
    property ID : String read FID write FID;
    property TabIndex : string read FTabIndex write FTabIndex;
    property StyleClass : string read FStyleClass write FStyleClass;
    property Style : string read FStyle write FStyle;
    property Accesskey : string read FAccesskey write FAccesskey;
    property Contenteditable : string read FContenteditable write FContenteditable;
    property Dir : string read FDir write FDir;
    property Draggable : string read FDraggable write FDraggable;
    property Hidden : string read FHidden write FHidden;
    property Lang : string read FLang write FLang;
    property Spellcheck : string read FSpellcheck write FSpellcheck;
    property Title : string read FTitle write FTitle;
    property Translate : string read FTranslate write FTranslate;
    property Data_ : string read FData_ write FData_;
    property Role : String read FRole write FRole;
    property AriaControls : String read FAriaControls write FAriaControls;
    property AriaSelected : String read FAriaSelected write FAriaSelected;
    property AriaLabelledby : String read FAriaLabelledby write FAriaLabelledby;

  published
  end;

  TIFHtmlElementBody = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  TIFHtmlElementDiv = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  TIFHtmlElementBR = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  TIFHtmlElementText = class(TIFHtmlElement)
  private
    FText: string;
  public
    function Render:string; override;
  published
    property Text : string  read FText write FText;
  end;

  TIFHtmlElementA = class(TIFHtmlElement)
  private
    FLink: string;
  public
    function Render:string; override;
  published
    property Link : string  read FLink write FLink;
  end;

  TIFHtmlElementP = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  TIFHtmlElementB = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  TIFHtmlElementH1 = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  TIFHtmlElementH2 = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  TIFHtmlElementH3 = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  TIFHtmlElementH4 = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  TIFHtmlElementH5 = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  TIFHtmlElementH6 = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  { TIFHtmlElementButton }

  TIFHtmlElementButton = class(TIFHtmlElement)
  private
    FDataBSTarget: string;
    FDataBSToggle: string;
    FTagType: String;
  public
    function Render:string; override;
    property TagType : String read FTagType write FTagType;
    property DataBSTarget : string read FDataBSTarget write FDataBSTarget;
    property DataBSToggle : string read FDataBSToggle write FDataBSToggle;
  published
  end;

  TIFHtmlForm = class(TIFHtmlElement)
  private
    FAction: string;
    FMethod: TIFHTTPMethodType;
  public
    function Render:string; override;
  published
    property Action : string read FAction write FAction;
    property Method : TIFHTTPMethodType read FMethod write FMethod;
  end;

  TIFHtmlElementLabel = class(TIFHtmlElement)
  private
    FText: string;
  public
    function Render:string; override;
  published
    property Text : string  read FText write FText;
  end;

  TIFHtmlElementInput = class(TIFHtmlElement)
  private
    FName: string;
    FInputType: string;
    FValue: string;
    FPlaceholder: string;
  public
    function Render:string; override;
  published
    property Name : string read FName write FName;
    property InputType : string read FInputType write FInputType;
    property Value : string read FValue write FValue;
    property Placeholder : string read FPlaceholder write FPlaceholder;
  end;

  TIFHtmlElementInputText = class(TIFHtmlElementInput)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TIFHtmlElementInputPassword = class(TIFHtmlElementInput)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TIFHtmlElementInputButton = class(TIFHtmlElementInput)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TIFHtmlElementSpan = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  { TIFHtmlElementNav }

  TIFHtmlElementNav = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  { TIFHtmlElementMain }

  TIFHtmlElementMain = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  { TIFHtmlElementUl }

  TIFHtmlElementUl = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  { TIFHtmlElementLi }

  TIFHtmlElementLi = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  { TIFHtmlElementTd }

  TIFHtmlElementTd = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  TIFHtmlElementTh = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  { TIFHtmlElementTr }

  TIFHtmlElementTr = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  { TIFHtmlElementTHead }

  TIFHtmlElementTHead = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
    function addRow : TIFHtmlElementTr;
  published
  end;

  { TIFHtmlElementTBody }

  TIFHtmlElementTBody = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
    function addRow : TIFHtmlElementTr;
  published
  end;


  { TIFHtmlElementTFoot }

  TIFHtmlElementTFoot = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
    function addRow : TIFHtmlElementTr;
  published
  end;


  { TIFHtmlElementTable }

  TIFHtmlElementTable = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

  { TIFHtmlElementSection }

  TIFHtmlElementSection = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
  published
  end;

implementation

{ TIFHtmlElementTFoot }

function TIFHtmlElementTFoot.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<tfoot';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</tfoot>';
  Result := sText;
end;

function TIFHtmlElementTFoot.addRow: TIFHtmlElementTr;
begin
  Result := TIFHtmlElementTr(add(TIFHtmlElementTr));
end;

{ TIFHtmlElementSection }

function TIFHtmlElementSection.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<section';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</section>';
  Result := sText;
end;

{ TIFHtmlElementTd }

function TIFHtmlElementTd.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<td';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';

  if Trim(Style) <> '' then
    sText := sText + ' style="'+Style+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</td>';
  Result := sText;
end;

{ TIFHtmlElementTBody }

function TIFHtmlElementTBody.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<tbody';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</tbody>';
  Result := sText;
end;

function TIFHtmlElementTBody.addRow: TIFHtmlElementTr;
begin
  Result := TIFHtmlElementTr(add(TIFHtmlElementTr));
end;

{ TIFHtmlElementTHead }

function TIFHtmlElementTHead.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<thead';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</thead>';
  Result := sText;
end;

function TIFHtmlElementTHead.addRow: TIFHtmlElementTr;
begin
  Result := TIFHtmlElementTr(add(TIFHtmlElementTr));
end;

{ TIFHtmlElementTr }

function TIFHtmlElementTr.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<tr';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</tr>';
  Result := sText;
end;

{ TIFHtmlElementTh }

function TIFHtmlElementTh.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<th';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  if Trim(Style) <> '' then
    sText := sText + ' style="'+Style+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</th>';
  Result := sText;
end;

{ TIFHtmlElementTable }

function TIFHtmlElementTable.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<table';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</table>';
  Result := sText;
end;

{ TIFHtmlElementMain }

function TIFHtmlElementMain.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<main';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</main>';
  Result := sText;
end;

{ TIFHtmlElementUl }

function TIFHtmlElementUl.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<ui';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</ul>';
  Result := sText;
end;

{ TIFHtmlElementLi }

function TIFHtmlElementLi.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<li';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</li>';
  Result := sText;
end;

{ TIFHtmlElementNav }

function TIFHtmlElementNav.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := '';
  sText := sText + '<nav';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</nav>';
  Result := sText;
end;

{ TIFHtmlElement }

function TIFHtmlElement.add(AClassType: TClassIFHtmlElement): TIFHtmlElement;
begin
  Result := AClassType.Create(Self);
end;

constructor TIFHtmlElement.Create(Element : TObject);
begin
  FElements := TIFHtmlElementList.Create;
  if Assigned(Element) then
    TIFHtmlElement(Element).Elements.Add(Self);
end;

function TIFHtmlElement.Render: string;
begin
  inherited;
end;

constructor TIFHtmlElement.Create;
begin
  Create(nil);
end;

{ TIFHtmlElementList }

function TIFHtmlElementList.Render: string;
var
  i : Integer;
begin
  Result := '';
  try
    for I := 0 to Count-1 do
      Result := Result + TIFHtmlElement(Items[i]).Render;
  except
  end;
end;

{ TIFHtmlElementBR }

function TIFHtmlElementBR.Render: string;
begin
  Result := '<br>';
end;

{ TIFHtmlElementH1 }

function TIFHtmlElementH1.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<h1';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</h1>';
  Result := sText;
end;

{ TIFHtmlElementBody }

function TIFHtmlElementBody.Render: string;
var
  sText : string;
begin
  inherited;
  sText := '';
  sText := sText + '<body';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</body>';
  Result := sText;
end;

{ TIFHtmlElementDiv }

function TIFHtmlElementDiv.Render: string;
var
  sText : string;
begin
  inherited;
  sText := '';
  sText := sText + '<div';
  if Trim(ID) <> '' then
    sText := sText + ' id ="'+ID+'"';

  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';

  if Trim(TabIndex) <> '' then
    sText := sText + ' tabindex ="'+TabIndex+'"';

  if Trim(Role) <> '' then
    sText := sText + ' role ="'+Role+'"';

  if Trim(AriaControls) <> '' then
    sText := sText + ' aria-controls ="'+AriaControls+'"';

  if Trim(AriaSelected) <> '' then
    sText := sText + ' aria-selected ="'+AriaSelected+'"';

  if Trim(AriaLabelledby) <> '' then
    sText := sText + ' aria-labelledby ="'+AriaLabelledby+'"';


  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</div>';
  Result := sText;
end;

{ TIFHtmlElementH6 }

function TIFHtmlElementH6.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<h6';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</h6>';
  Result := sText;
end;

{ TIFHtmlElementH5 }

function TIFHtmlElementH5.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<h5';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</h5>';
  Result := sText;
end;

{ TIFHtmlElementH4 }

function TIFHtmlElementH4.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<h4';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</h4>';
  Result := sText;
end;

{ TIFHtmlElementH3 }

function TIFHtmlElementH3.Render: string;
var
  sText : string;
begin
  inherited;
  sText := '';
  sText := sText + '<h3';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</h3>';
  Result := sText;
end;

{ TIFHtmlElementH2 }

function TIFHtmlElementH2.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<h2';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</h2>';
  Result := sText;
end;

{ TIFHtmlElementInput }

function TIFHtmlElementInput.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<input';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  if Trim(Name) <> '' then
    sText := sText + ' name="'+Name+'"';
  if Trim(value) <> '' then
    sText := sText + ' value="'+Value+'"';
  if Trim(InputType) <> '' then
    sText := sText + ' type="'+InputType+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  Result := sText;
end;

{ TIFHtmlElementPassButton }

constructor TIFHtmlElementInputButton.Create(Element: TObject);
begin
  inherited;
  InputType := 'submit';
end;

{ TIFHtmlElementInputPassword }

constructor TIFHtmlElementInputPassword.Create(Element: TObject);
begin
  inherited;
  InputType := 'password';
end;

{ TIFHtmlForm }

function TIFHtmlForm.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<form';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  if Trim(Action) <> '' then
    sText := sText + ' action="'+Action+'"';
  sText := sText + ' method="POST"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</form>';
  Result := sText;
end;

{ TIFHtmlElementInputText }

constructor TIFHtmlElementInputText.Create(Element: TObject);
begin
  inherited;

end;

{ TIFHtmlElementLabel }

function TIFHtmlElementLabel.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<label';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Text;
  sText := sText + '</label>';
  Result := sText;
end;

{ TIFHtmlElementA }

function TIFHtmlElementA.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<a';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  if Trim(Link) <> '' then
    sText := sText + ' href="'+Link+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</a>';
  Result := sText;
end;

{ TIFHtmlElementText }

function TIFHtmlElementText.Render: string;
begin
  Result := Text;
end;

{ TIFHtmlElementP }

function TIFHtmlElementP.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<p';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</p>';
  Result := sText;
end;

{ TIFHtmlElementB }

function TIFHtmlElementB.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<b';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</b>';
  Result := sText;
end;

{ TIFHtmlElementSpan }

function TIFHtmlElementSpan.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<span';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</span>';
  Result := sText;
end;

{ TIFHtmlElementButton }

function TIFHtmlElementButton.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<button type="submit"';


  if Trim(ID) <> '' then
    sText := sText + ' id ="'+ID+'"';

  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';

  if Trim(TabIndex) <> '' then
    sText := sText + ' tabindex ="'+TabIndex+'"';

  if Trim(Role) <> '' then
    sText := sText + ' role ="'+Role+'"';

  if Trim(AriaControls) <> '' then
    sText := sText + ' aria-controls ="'+AriaControls+'"';

  if Trim(AriaSelected) <> '' then
    sText := sText + ' aria-selected ="'+AriaSelected+'"';

  if Trim(AriaLabelledby) <> '' then
    sText := sText + ' aria-labelledby ="'+AriaLabelledby+'"';

  if Trim(TagType) <> '' then
    sText := sText + ' type ="'+TagType+'"';

  if Trim(DataBSTarget) <> '' then
    sText := sText + ' data-bs-target ="'+DataBSTarget+'"';

  if Trim(DataBSToggle) <> '' then
    sText := sText + ' data-bs-toggle ="'+DataBSToggle+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</button>';
  Result := sText;
end;

end.
