unit chf.pwp.script;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TChfPWPScript }

  TChfPWPScript = class(TObject)
  private
    FLink: string;
  public
    function Render:string;
    property Link : string read FLink write FLink;
  published
  end;

  { TChfPWPScriptList }

  TChfPWPScriptList = class(TList)
  public
    function addScript():TChfPWPScript;
    function Render:string;
  published
  end;


implementation

{ TChfPWPScript }

function TChfPWPScript.Render: string;
var
  sText : string;
begin
  sText := '<script src = "'+Link+'" > </script>';
  Result := sText;
end;

{ TChfPWPScriptList }

function TChfPWPScriptList.addScript(): TChfPWPScript;
var
  o : TChfPWPScript;
begin
  o := TChfPWPScript.Create;
  Add(o);
  Result := o;
end;

function TChfPWPScriptList.Render: string;
var
  i : Integer;
begin
  Result := '';
  for I := 0 to Count-1 do
    Result := Result + TChfPWPScript(Items[i]).Render;
end;

end.

