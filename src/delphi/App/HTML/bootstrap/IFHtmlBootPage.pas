unit IFHtmlBootPage;

interface

uses
  System.Classes, System.SysUtils, IFHtmlMeta, IFHtmlLink, IFHtmlElement,
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
  // Bootstrap 3.3.6
  Links.addLink('', '/assets/css/bootstrap.min.css', '', '', 'stylesheet', '', '');
  // Font Awesome
  Links.addLink('', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css', '', '', 'stylesheet', '', '');
end;

end.





