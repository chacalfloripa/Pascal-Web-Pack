unit IFHtmlBootPage;

interface

uses
  Classes, SysUtils, IFHtmlMeta, IFHtmlLink, IFHtmlElement,
  IFHtmlPage;

type
  TIFHtmlBootPage = class(TIFHtmlPage)
  private
  public
    constructor Create; override;
  published
  end;

implementation

{ TIFHtmlBootPage }

constructor TIFHtmlBootPage.Create;
begin
  inherited;
  // Bootstrap 5.x
  Links.addLink('', 'https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css', '', '', 'stylesheet', '', '');
  Scripts.addScript().Link := 'https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js';
end;

end.





