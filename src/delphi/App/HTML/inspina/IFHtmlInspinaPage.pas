unit IFHtmlPage;

interface

uses
  System.Classes, System.SysUtils, IFHtmlMeta, IFHtmlLink, IFHtmlElement;

type
  TIFHtmlPage = class(TObject)
  private
    FTitle: string;
    FStyleBodyClass: string;
    FHtmlLang: string;
    FDOCTYPE: string;
    FMetas: TIFHtmlHeadMetaList;
    FLinks: TIFHtmlHeadLinkList;
    FBody: TIFHtmlElementBody;
  public
    constructor Create; virtual;
    function Render:string; virtual;
  published
    property DOCTYPE : string read FDOCTYPE write FDOCTYPE;
    property HtmlLang : string read FHtmlLang write FHtmlLang;
    property Title :string read FTitle write FTitle;
    property Metas : TIFHtmlHeadMetaList read FMetas write FMetas;
    property Links : TIFHtmlHeadLinkList read FLinks write FLinks;
    property Body : TIFHtmlElementBody read FBody write FBody;
  end;

implementation

{ TIFHtmlPage }


constructor TIFHtmlPage.Create;
begin
  FMetas := TIFHtmlHeadMetaList.Create;
  FLinks := TIFHtmlHeadLinkList.Create;
  FBody := TIFHtmlElementBody.Create;
  //
  DOCTYPE := 'html';
  Metas.addMeta('utf-8', '', '', '');
  HtmlLang := 'en';
end;

function TIFHtmlPage.Render: string;
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
  sText := sText + '</html>';
  Result := sText;
end;

end.
