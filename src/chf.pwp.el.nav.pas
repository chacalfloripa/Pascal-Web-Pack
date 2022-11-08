unit chf.pwp.el.nav;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, chf.pwp.el;

type

  { TChfPWPElNav }

  TChfPWPElNav = class(TChfPWPEl)
  private
  public
    function Render:string; override;
  published
  end;

implementation

{ TChfPWPElNav }

function TChfPWPElNav.Render: string;
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

end.

