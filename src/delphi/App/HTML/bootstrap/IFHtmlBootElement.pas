unit IFHtmlBootElement;

interface

uses
  Classes, SysUtils, IFHtmlElement;

type

  TIFHtmlBootElementSize = (esExtraSmall, esSmall, esMedium, esLarge);

  TIFHtmlBootElement = class(TIFHtmlElement)
  private
  public
  published
  end;

  TIFHtmlBootElementDiv = class(TIFHtmlElementDiv)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TIFHtmlBootElementContainer = class(TIFHtmlBootElementDiv)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TIFHtmlBootElementRow = class(TIFHtmlBootElementDiv)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;
  TIFHtmlBootElementGridCol = class(TIFHtmlBootElementDiv)
  private
    FElementSize: TIFHtmlBootElementSize;
    function getSize:string;
  public
    constructor Create(Element : TObject); override;
    function Render: string; 
  published
    property Size : TIFHtmlBootElementSize read FElementSize write FElementSize;
  end;

  TIFHtmlBootElementGridRow = class(TIFHtmlBootElementRow)
  private
  public
    constructor Create(Element : TObject); override;
    function Render: string; override;
    function addCol(cols : Word) : TIFHtmlBootElementGridCol;
  published
  end;  

  TIFHtmlBootElementGridSystem = class(TIFHtmlBootElementRow)
  private
    FColumns: Word;
    FRows: Word;
  public
    constructor Create(Element : TObject); override;
    function Render: string; override;
    function addRow():TIFHtmlBootElementGridRow;
  published
    property Rows : Word read FRows;
    property Columns : Word read FColumns;
  end;

  TIFHtmlBootForm = class(TIFHtmlForm)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TIFHtmlBootFormGroup = class(TIFHtmlBootElementDiv)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TIFHtmlBootElementLabel = class(TIFHtmlElementLabel)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TIFHtmlBootElementInputText = class(TIFHtmlElementInputText)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TIFHtmlBootElementInputPassword = class(TIFHtmlElementInputPassword)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;

  TIFHtmlBootElementInputButton = class(TIFHtmlElementInputButton)
  private
  public
    constructor Create(Element : TObject); override;
  published
  end;



implementation


{ TIFHtmlBootElementContainer }

constructor TIFHtmlBootElementContainer.Create(Element : TObject);
begin
  inherited;
  StyleClass := 'container';
end;

{ TIFHtmlBootElementRow }

constructor TIFHtmlBootElementRow.Create(Element : TObject);
begin
  StyleClass := 'row';
  inherited;
end;

{ TIFHtmlBootElementGrid }

function TIFHtmlBootElementGridSystem.addRow: TIFHtmlBootElementGridRow;
begin
  Result := TIFHtmlBootElementGridRow.Create(self);
end;

constructor TIFHtmlBootElementGridSystem.Create(Element : TObject);
begin
  inherited;
end;

function TIFHtmlBootElementGridSystem.Render: string;
begin
  Result := inherited;
end;

{ TIFHtmlBootElementDiv }

constructor TIFHtmlBootElementDiv.Create(Element : TObject);
begin
  inherited;

end;

{ TIFHtmlBootElementGridCol }

constructor TIFHtmlBootElementGridCol.Create(Element: TObject);
begin
  inherited;

end;

function TIFHtmlBootElementGridCol.getSize: string;
begin
end;

function TIFHtmlBootElementGridCol.Render: string;
begin
   Result := inherited;
end;

{ TIFHtmlBootElementGridRow }

function TIFHtmlBootElementGridRow.addCol(
  cols: Word): TIFHtmlBootElementGridCol;
begin
  Result := TIFHtmlBootElementGridCol.Create(self);
  Result.StyleClass := 'col-md-'+IntToStr(cols);
end;

constructor TIFHtmlBootElementGridRow.Create(Element: TObject);
begin
  inherited;
end;

function TIFHtmlBootElementGridRow.Render: string;
begin
  Result := inherited;
end;

{ TIFHtmlBootForm }

constructor TIFHtmlBootForm.Create(Element: TObject);
begin
  inherited;
  StyleClass := '';
end;

{ TIFHtmlBootElementInputText }

constructor TIFHtmlBootElementInputText.Create(Element: TObject);
begin
  inherited;
  StyleClass := 'form-control';;
end;

{ TIFHtmlBootElementInputButton }

constructor TIFHtmlBootElementInputButton.Create(Element: TObject);
begin
  inherited;
  StyleClass := 'btn btn-default';
end;

{ TIFHtmlBootElementInputPassword }

constructor TIFHtmlBootElementInputPassword.Create(Element: TObject);
begin
  inherited;
  StyleClass := 'form-control';
end;

{ TIFHtmlBootElementLabel }

constructor TIFHtmlBootElementLabel.Create(Element: TObject);
begin
  inherited;
end;

{ TIFHtmlBootFormGroup }

constructor TIFHtmlBootFormGroup.Create(Element: TObject);
begin
  inherited;
  StyleClass := 'form-group';
end;

end.
