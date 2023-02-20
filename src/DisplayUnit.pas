unit DisplayUnit;

interface

type
  IntegerArray = array of Integer;

procedure Display(title: string; arr: IntegerArray);

implementation

uses
  SysUtils;

procedure Display(title: string; arr: IntegerArray);
var
  i: Integer;
begin
  Write(Format('%-20s: ', [title]));
  for i := 0 to Length(arr)-1 do
  begin
    Write(Format('%2d', [arr[i]]));
  end;
  WriteLn;
end;

end.
