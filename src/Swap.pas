unit Swap;

interface

procedure DoSwap(x: integer; var y: integer);

implementation

procedure DoSwap(x: integer; var y: integer);
var
  temp: integer;
begin
  temp := x;
  x := y;
  y := temp;
end;

end.
