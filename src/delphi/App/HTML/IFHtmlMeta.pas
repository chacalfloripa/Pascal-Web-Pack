unit IFHtmlMeta;

interface

uses
  Classes, SysUtils;

type

  TIFHtmlHeadMeta = class(TObject)
  private
    FName: string;
    FHTTP_Equiv: string;
    FCharSet: string;
    FContent: string;
  public
    function Render:string;
  published
    property CharSet : string read FCharSet write FCharSet;
    property Name : string read FName write FName;
    property Content : string read FContent write FContent;
    property HTTP_Equiv : string read FHTTP_Equiv write FHTTP_Equiv;
  end;

  TIFHtmlHeadMetaList = class(TList)
  public
    procedure addMeta(CharSet:string; Name : string; Content :string;
      HTTP_Equiv : string);
    function Render:string;
  published
  end;

implementation

{ TIFHtmlHeadMeta }

function TIFHtmlHeadMeta.Render: string;
var
  sText : string;
begin
  sText := '<meta';
  if Trim(CharSet) <> '' then
    sText := sText + ' charset="'+CharSet+'"';
  //
  if Trim(Name) <> '' then
    sText := sText + ' name="'+Name+'"';
  //
  if Trim(Content) <> '' then
    sText := sText + ' content="'+Content+'"';
  //
  if Trim(HTTP_Equiv) <> '' then
    sText := sText + ' http-equiv="'+HTTP_Equiv+'"';
  sText := sText + ' >';
  Result := sText;
end;

{ TIFHtmlHeadMetaList }

procedure TIFHtmlHeadMetaList.addMeta(CharSet, Name, Content,
  HTTP_Equiv: string);
var
  o : TIFHtmlHeadMeta;  
begin
  o := TIFHtmlHeadMeta.Create;
  o.CharSet := CharSet;
  o.Name := Name;
  o.Content := Content;
  o.HTTP_Equiv := HTTP_Equiv;    
  Add(o);  
end;

function TIFHtmlHeadMetaList.Render: string;
var
  i : Integer;
begin
  Result := '';
  for I := 0 to Count-1 do
    Result := Result + TIFHtmlHeadMeta(Items[i]).Render;
end;

end.
