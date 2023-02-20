unit Output;

interface

procedure PrintText(text: string);

implementation

uses
  SysUtils;

procedure PrintText(text: string);
begin
  writeln(text);
  Exit;
end;

end.
