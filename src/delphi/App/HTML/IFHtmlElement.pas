unit IFHtmlElement;

interface

uses
  System.Classes, System.SysUtils, IFHTTP;

type
  TIFHtmlElement = class;
  TClassIFHtmlElement = class of TIFHtmlElement;

  TIFHtmlElementList = class(TList)
    public
      function Render:string;
    published
  end;

  TIFHtmlElement = class(TObject)
  private
    FStyleClass: string;
    FElements: TIFHtmlElementList;
  public
    function add(ClassType : TClassIFHtmlElement) : TIFHtmlElement;
    constructor Create; overload; virtual;
    constructor Create(Element : TObject); overload; virtual;
    function Render:string; virtual;
    property Elements : TIFHtmlElementList read FElements write FElements;
    property StyleClass : string read FStyleClass write FStyleClass;
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

  TIFHtmlElemenText = class(TIFHtmlElement)
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

  TIFHtmlElementButton = class(TIFHtmlElement)
  private
  public
    function Render:string; override;
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

implementation

{ TIFHtmlElement }

function TIFHtmlElement.add(ClassType: TClassIFHtmlElement): TIFHtmlElement;
begin
  Result := ClassType.Create(Self);
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
  for I := 0 to Count-1 do
    Result := Result + TIFHtmlElement(Items[i]).Render;
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
  sText := sText + '<div';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
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

{ TIFHtmlElemenText }

function TIFHtmlElemenText.Render: string;
begin
  Result := Text;
end;

{ TIFHtmlElementP }

function TIFHtmlElementP.Render: string;
var
  sText : string;
begin
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
  sText := sText + '<button type="submit"';
  if Trim(StyleClass) <> '' then
    sText := sText + ' class="'+StyleClass+'"';
  //
  sText := sText + '>';
  //
  sText := sText + Elements.Render;
  sText := sText + '</button>';
  Result := sText;
end;

end.
