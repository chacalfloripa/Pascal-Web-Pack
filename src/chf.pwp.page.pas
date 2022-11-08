unit chf.pwp.page;

interface

uses
  Classes, SysUtils, chf.pwp.meta, chf.pwp.link, chf.pwp.el, chf.pwp.script;

type

  { TChfPWPPage }

  TChfPWPPage = class(TObject)
  private
    FScripts: TChfPWPScriptList;
    FTitle: string;
    FStyleBodyClass: string;
    FHtmlLang: string;
    FDOCTYPE: string;
    FMetas: TChfPWPHeadMetaList;
    FLinks: TChfPWPHeadLinkList;
    FBody: TChfPWPElBody;
  public
    constructor Create; virtual;
    function Render:string; virtual;
  published
    property DOCTYPE : string read FDOCTYPE write FDOCTYPE;
    property HtmlLang : string read FHtmlLang write FHtmlLang;
    property Title :string read FTitle write FTitle;
    property Metas : TChfPWPHeadMetaList read FMetas write FMetas;
    property Links : TChfPWPHeadLinkList read FLinks write FLinks;
    property Scripts : TChfPWPScriptList read FScripts write FScripts;
    property Body : TChfPWPElBody read FBody write FBody;

  end;

implementation

{ TChfPWPPage }


constructor TChfPWPPage.Create;
begin
  FMetas := TChfPWPHeadMetaList.Create;
  FLinks := TChfPWPHeadLinkList.Create;
  FScripts := TChfPWPScriptList.Create;
  FBody := TChfPWPElBody.Create;
  //
  DOCTYPE := 'html';
  Metas.addMeta('utf-8', '', '', '');
  HtmlLang := 'en';
end;

function TChfPWPPage.Render: string;
var
  sText : string;
begin
  sText := '';
  sText := sText + '<!DOCTYPE '+DOCTYPE+'>';
  sText := sText + '<html lang="'+HtmlLang+'">';
  sText := sText + '<head>';
  sText := sText + FMetas.Render;
  sText := sText + '<title>'+Title+'</title>';
  sText := sText + FLinks.Render;
  sText := sText + '</head>';
  sText := sText + Body.Render;
  sText := sText + FScripts.Render;
  sText := sText + '</html>';
  Result := sText;
end;

end.
