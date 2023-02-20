unit HeapSort;

interface

type
  IntegerArray = array of Integer;

procedure heap_sort(var arr: IntegerArray);

implementation

procedure SwapValues(var x, y: Integer);
var
  temp: Integer;
begin
  temp := x;
  x := y;
  y := temp;
end;

procedure Heapify(var arr: IntegerArray; i, n: Integer);
var
  child, root: Integer;
begin
  root := i;
  while 2 * root + 1 < n do
  begin
    child := 2 * root + 1;
    if (child + 1 < n) and (arr[child] < arr[child + 1]) then
      child := child + 1;
    if arr[root] < arr[child] then
    begin
      SwapValues(arr[root], arr[child]);
      root := child;
    end
    else
      Break;
  end;
end;

procedure heap_sort(var arr: IntegerArray);
var
  i, n: Integer;
begin
  n := Length(arr);
  for i := n div 2 - 1 downto 0 do
    Heapify(arr, i, n);
  for i := n - 1 downto 1 do
  begin
    SwapValues(arr[0], arr[i]);
    Heapify(arr, 0, i);
  end;
end;

end.
