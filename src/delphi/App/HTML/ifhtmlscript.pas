unit IFHtmlScript;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TIFHtmlScript }

  TIFHtmlScript = class(TObject)
  private
    FLink: string;
  public
    function Render:string;
    property Link : string read FLink write FLink;
  published
  end;

  { TIFHtmlScriptList }

  TIFHtmlScriptList = class(TList)
  public
    function addScript():TIFHtmlScript;
    function Render:string;
  published
  end;


implementation

{ TIFHtmlScript }

function TIFHtmlScript.Render: string;
var
  sText : string;
begin
  sText := '<script src = "'+Link+'" > </script>';
  Result := sText;
end;

{ TIFHtmlScriptList }

function TIFHtmlScriptList.addScript(): TIFHtmlScript;
var
  o : TIFHtmlScript;
begin
  o := TIFHtmlScript.Create;
  Add(o);
  Result := o;
end;

function TIFHtmlScriptList.Render: string;
var
  i : Integer;
begin
  Result := '';
  for I := 0 to Count-1 do
    Result := Result + TIFHtmlScript(Items[i]).Render;
end;

end.

