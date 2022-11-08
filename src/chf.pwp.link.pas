unit chf.pwp.link;

interface

uses
  Classes, SysUtils;

type
  TChfPWPHeadLink = class(TObject)
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

  TChfPWPHeadLinkList = class(TList)
  public
    procedure addLink(LinkCrossOrigin, LinkHref, HrefLang, LinkMedia, LinkRel, LinkSizes, LinkType :string);
    function Render:string;
  published
  end;

implementation

{ TChfPWPHeadMeta }

function TChfPWPHeadLink.Render: string;
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

{ TChfPWPHeadMetaList }

procedure TChfPWPHeadLinkList.addLink(LinkCrossOrigin, LinkHref, HrefLang,
  LinkMedia, LinkRel, LinkSizes, LinkType: string);
var
  o : TChfPWPHeadLink;
begin
  o := TChfPWPHeadLink.Create;
  o.LinkCrossOrigin := LinkCrossOrigin;
  o.LinkHref := LinkHref;
  o.HrefLang := HrefLang;
  o.LinkMedia := LinkMedia;
  o.LinkRel := LinkRel;
  o.LinkSizes := LinkSizes;
  o.LinkType := LinkType;
  Add(o);
end;

function TChfPWPHeadLinkList.Render: string;
var
  i : Integer;
begin
  Result := '';
  for I := 0 to Count-1 do
    Result := Result + TChfPWPHeadLink(Items[i]).Render;
end;

end.
