unit ShuffleUnit;

interface

type
  IntegerArray = array of Integer;

procedure Shuffle(var arr: IntegerArray);

implementation

procedure Swap(var x, y: Integer);
var
  temp: Integer;
begin
  temp := x;
  x := y;
  y := temp;
end;

procedure Shuffle(var arr: IntegerArray);
var
  i, j, n: Integer;
begin
  Randomize;
  n := Length(arr);
  for i := n-1 downto 1 do
  begin
    j := Random(i+1);
    Swap(arr[i], arr[j]);
  end;
end;

end.
