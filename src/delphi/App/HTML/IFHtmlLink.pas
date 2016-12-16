unit IFHtmlLink;

interface

uses
  System.Classes, System.SysUtils;

type
  TIFHtmlHeadLink = class(TObject)
  private
    FLinkType: string;
    FLinkCrossOrigin: string;
    FHrefLang: string;
    FLinkRel: string;
    FLinkMedia: string;
    FLinkSizes: string;
    FLinkHref: string;
  public
    function Render:string;
  published
    property LinkCrossOrigin : string read FLinkCrossOrigin write FLinkCrossOrigin;
    property LinkHref : string read FLinkHref write FLinkHref;
    property HrefLang : string read FHrefLang write FHrefLang;
    property LinkMedia : string read FLinkMedia write FLinkMedia;
    property LinkRel : string read FLinkRel write FLinkRel;
    property LinkSizes : string read FLinkSizes write FLinkSizes;
    property LinkType : string read FLinkType write FLinkType;
  end;

  TIFHtmlHeadLinkList = class(TList)
  public
    procedure addLink(LinkCrossOrigin, LinkHref, HrefLang, LinkMedia, LinkRel, LinkSizes, LinkType :string);
    function Render:string;
  published
  end;

implementation

{ TIFHtmlHeadMeta }

function TIFHtmlHeadLink.Render: string;
var
  sText : string;
begin
  sText := '<link';
  if Trim(LinkCrossOrigin) <> '' then
    sText := sText + ' crossOrigin="'+LinkCrossOrigin+'"';
  //
  if Trim(LinkHref) <> '' then
    sText := sText + ' href="'+LinkHref+'"';
  //
  if Trim(LinkMedia) <> '' then
    sText := sText + ' media="'+LinkMedia+'"';
  //
  if Trim(LinkRel) <> '' then
    sText := sText + ' rel="'+LinkRel+'"';
  //
  if Trim(LinkSizes) <> '' then
    sText := sText + ' sizes="'+LinkSizes+'"';
  //
  if Trim(LinkType) <> '' then
    sText := sText + ' type="'+LinkType+'"';

  sText := sText + ' >';
  Result := sText;
end;

{ TIFHtmlHeadMetaList }

procedure TIFHtmlHeadLinkList.addLink(LinkCrossOrigin, LinkHref, HrefLang,
  LinkMedia, LinkRel, LinkSizes, LinkType: string);
var
  o : TIFHtmlHeadLink;
begin
  o := TIFHtmlHeadLink.Create;
  o.LinkCrossOrigin := LinkCrossOrigin;
  o.LinkHref := LinkHref;
  o.HrefLang := HrefLang;
  o.LinkMedia := LinkMedia;
  o.LinkRel := LinkRel;
  o.LinkSizes := LinkSizes;
  o.LinkType := LinkType;
  Add(o);
end;

function TIFHtmlHeadLinkList.Render: string;
var
  i : Integer;
begin
  for I := 0 to Count-1 do
    Result := Result + TIFHtmlHeadLink(Items[i]).Render;
end;

end.
