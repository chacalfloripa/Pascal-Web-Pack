unit IFHtmlAdminLTEPage;

interface

uses
  System.Classes, System.SysUtils, IFHtmlMeta, IFHtmlLink, IFHtmlBootPage;

type
  TIFHtmlAdminLTEPage = class(TIFHtmlBootPage)
  private
  public
    constructor Create; override;
  published
  end;

implementation

{ TIFHtmlAdminLTEPage }

constructor TIFHtmlAdminLTEPage.Create;
begin
  inherited;
  Metas.addMeta('', 'viewport', 'width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no', '');
  // Font Awesome
  Links.addLink('', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css', '', '', 'stylesheet', '', '');
  // Ionicons
  Links.addLink('', 'https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css', '', '', 'stylesheet', '', '');
  // Theme style
  Links.addLink('', '/assets/css/AdminLTE.min.css', '', '', 'stylesheet', '', '');
  //
  Body.StyleClass := 'hold-transition login-page';
end;

end.
