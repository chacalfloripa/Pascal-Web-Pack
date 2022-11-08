unit chf.pwp.el;

interface

uses
  Classes, SysUtils, chf.pwp.http;

type
  TChfPWPEl = class;
  TClassIFHtmlEl = class of TChfPWPEl;

  TChfPWPElList = class(TList)
    public
      function Render:string;
    published
  end;

  { TChfPWPEl }

  TChfPWPEl = class(TObject)
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
    FElements: TChfPWPElList;
    FTabIndex: string;
    FTitle: string;
    FTranslate: string;
  public
    function add(AClassType : TClassIFHtmlEl) : TChfPWPEl;
    constructor Create; overload; virtual;
    constructor Create(Element : TObject); overload; virtual;
    function Render:string; virtual;
    property Elements : TChfPWPElList read FElements write FElements;
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

  TChfPWPElBody = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  TChfPWPElDiv = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  TChfPWPElBR = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  TChfPWPElText = class(TChfPWPEl)
  private
    FText: string;
  public
    function Render:string; override;
  published
    property Text : string  read FText write FText;
  end;

  TChfPWPElA = class(TChfPWPEl)
  private
    FLink: string;
  public
    function Render:string; override;
  published
    property Link : string  read FLink write FLink;
  end;

  TChfPWPElP = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  TChfPWPElB = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  TChfPWPElH1 = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  TChfPWPElH2 = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  TChfPWPElH3 = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  TChfPWPElH4 = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  TChfPWPElH5 = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  TChfPWPElH6 = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  { TChfPWPElButton }

  TChfPWPElButton = class(TChfPWPEl)
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

  TChfPWPForm = class(TChfPWPEl)
  private
    FAction: string;
    FMethod: TIFHTTPMethodType;
  public
    function Render:string; override;
  published
    property Action : string read FAction write FAction;
    property Method : TIFHTTPMethodType read FMethod write FMethod;
  end;

  TChfPWPElLabel = class(TChfPWPEl)
  private
    FText: string;
  public
    function Render:string; override;
  published
    property Text : string  read FText write FText;
  end;

  TChfPWPElInput = class(TChfPWPEl)
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

  TChfPWPElInputText = class(TChfPWPElInput)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TChfPWPElInputPassword = class(TChfPWPElInput)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TChfPWPElInputButton = class(TChfPWPElInput)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TChfPWPElSpan = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;


  { TChfPWPElMain }

  TChfPWPElMain = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  { TChfPWPElUl }

  TChfPWPElUl = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  { TChfPWPElLi }

  TChfPWPElLi = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  { TChfPWPElTd }

  TChfPWPElTd = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  TChfPWPElTh = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  { TChfPWPElTr }

  TChfPWPElTr = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  { TChfPWPElTHead }

  TChfPWPElTHead = class(TChfPWPEl)
  private
  public
    function Render:string; override;
    function addRow : TChfPWPElTr;
  published
  end;

  { TChfPWPElTBody }

  TChfPWPElTBody = class(TChfPWPEl)
  private
  public
    function Render:string; override;
    function addRow : TChfPWPElTr;
  published
  end;


  { TChfPWPElTFoot }

  TChfPWPElTFoot = class(TChfPWPEl)
  private
  public
    function Render:string; override;
    function addRow : TChfPWPElTr;
  published
  end;


  { TChfPWPElTable }

  TChfPWPElTable = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

  { TChfPWPElSection }

  TChfPWPElSection = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

implementation

{ TChfPWPElTFoot }

function TChfPWPElTFoot.Render: string;
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

function TChfPWPElTFoot.addRow: TChfPWPElTr;
begin
  Result := TChfPWPElTr(add(TChfPWPElTr));
end;

{ TChfPWPElSection }

function TChfPWPElSection.Render: string;
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

{ TChfPWPElTd }

function TChfPWPElTd.Render: string;
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

{ TChfPWPElTBody }

function TChfPWPElTBody.Render: string;
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

function TChfPWPElTBody.addRow: TChfPWPElTr;
begin
  Result := TChfPWPElTr(add(TChfPWPElTr));
end;

{ TChfPWPElTHead }

function TChfPWPElTHead.Render: string;
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

function TChfPWPElTHead.addRow: TChfPWPElTr;
begin
  Result := TChfPWPElTr(add(TChfPWPElTr));
end;

{ TChfPWPElTr }

function TChfPWPElTr.Render: string;
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

{ TChfPWPElTh }

function TChfPWPElTh.Render: string;
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

{ TChfPWPElTable }

function TChfPWPElTable.Render: string;
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

{ TChfPWPElMain }

function TChfPWPElMain.Render: string;
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

{ TChfPWPElUl }

function TChfPWPElUl.Render: string;
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

{ TChfPWPElLi }

function TChfPWPElLi.Render: string;
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


{ TChfPWPEl }

function TChfPWPEl.add(AClassType: TClassIFHtmlEl): TChfPWPEl;
begin
  Result := AClassType.Create(Self);
end;

constructor TChfPWPEl.Create(Element : TObject);
begin
  FElements := TChfPWPElList.Create;
  if Assigned(Element) then
    TChfPWPEl(Element).Elements.Add(Self);
end;

function TChfPWPEl.Render: string;
begin
  inherited;
end;

constructor TChfPWPEl.Create;
begin
  Create(nil);
end;

{ TChfPWPElList }

function TChfPWPElList.Render: string;
var
  i : Integer;
begin
  Result := '';
  try
    for I := 0 to Count-1 do
      Result := Result + TChfPWPEl(Items[i]).Render;
  except
  end;
end;

{ TChfPWPElBR }

function TChfPWPElBR.Render: string;
begin
  Result := '<br>';
end;

{ TChfPWPElH1 }

function TChfPWPElH1.Render: string;
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

{ TChfPWPElBody }

function TChfPWPElBody.Render: string;
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

{ TChfPWPElDiv }

function TChfPWPElDiv.Render: string;
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

{ TChfPWPElH6 }

function TChfPWPElH6.Render: string;
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

{ TChfPWPElH5 }

function TChfPWPElH5.Render: string;
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

{ TChfPWPElH4 }

function TChfPWPElH4.Render: string;
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

{ TChfPWPElH3 }

function TChfPWPElH3.Render: string;
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

{ TChfPWPElH2 }

function TChfPWPElH2.Render: string;
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

{ TChfPWPElInput }

function TChfPWPElInput.Render: string;
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

{ TChfPWPElPassButton }

constructor TChfPWPElInputButton.Create(Element: TObject);
begin
  inherited;
  InputType := 'submit';
end;

{ TChfPWPElInputPassword }

constructor TChfPWPElInputPassword.Create(Element: TObject);
begin
  inherited;
  InputType := 'password';
end;

{ TChfPWPForm }

function TChfPWPForm.Render: string;
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

{ TChfPWPElInputText }

constructor TChfPWPElInputText.Create(Element: TObject);
begin
  inherited;

end;

{ TChfPWPElLabel }

function TChfPWPElLabel.Render: string;
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

{ TChfPWPElA }

function TChfPWPElA.Render: string;
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

{ TChfPWPElText }

function TChfPWPElText.Render: string;
begin
  Result := Text;
end;

{ TChfPWPElP }

function TChfPWPElP.Render: string;
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

{ TChfPWPElB }

function TChfPWPElB.Render: string;
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

{ TChfPWPElSpan }

function TChfPWPElSpan.Render: string;
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

{ TChfPWPElButton }

function TChfPWPElButton.Render: string;
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
