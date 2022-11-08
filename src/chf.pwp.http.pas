unit chf.pwp.http;

interface

type
  TIFHTTPMethodType = (httpGET, httpPOST, httpPUT, httpDELETE, httpHEAD,
    httpOPTIONS, httpPATCH, httpTRACE);
  TIFHTTP = class
  public
    function StringMethodToHTTPMetod(const Value: AnsiString): TIFHTTPMethodType;
    function HTTPMetodMethodToString(const Value: TIFHTTPMethodType): AnsiString;
  end;

implementation

{ TIFHTTP }

function TIFHTTP.HTTPMetodMethodToString(
  const Value: TIFHTTPMethodType): AnsiString;
begin
  if Value = httpGET then
    Exit('GET');
  if Value = httpPOST then
    Exit('POST');
  if Value = httpDELETE then
    Exit('DELETE');
  if Value = httpPUT then
    Exit('PUT');
  if Value = httpHEAD then
    Exit('HEAD');
  if Value = httpOPTIONS then
    Exit('OPTIONS');
  if Value = httpPATCH then
    Exit('PATCH');
  if Value = httpTRACE then
    Exit('TRACE');
end;

function TIFHTTP.StringMethodToHTTPMetod(
  const Value: AnsiString): TIFHTTPMethodType;
begin
  if Value = 'GET' then
    Exit(httpGET);
  if Value = 'POST' then
    Exit(httpPOST);
  if Value = 'DELETE' then
    Exit(httpDELETE);
  if Value = 'PUT' then
    Exit(httpPUT);
  if Value = 'HEAD' then
    Exit(httpHEAD);
  if Value = 'OPTIONS' then
    Exit(httpOPTIONS);
  if Value = 'PATCH' then
    Exit(httpPATCH);
  if Value = 'TRACE' then
    Exit(httpTRACE);
end;

end.
