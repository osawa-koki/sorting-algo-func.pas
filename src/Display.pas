unit Display;

interface

type
  IntegerArray = array of Integer;

procedure Show(title: string; arr: IntegerArray);

implementation

procedure Show(title: string; arr: IntegerArray);
var
  i: Integer;
begin
  Write(title, ':');
  for i := 0 to Length(arr)-1 do
  begin
    Write(arr[i], ' ');
  end;
  WriteLn;
end;

end.
