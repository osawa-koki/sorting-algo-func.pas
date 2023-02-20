unit BubbleSort;

interface

type
  IntegerArray = array of Integer;

procedure bubble_sort(var arr: IntegerArray);

implementation

procedure bubble_sort(var arr: IntegerArray);
var
  i, j, n, temp: Integer;
begin
  n := Length(arr);
  for i := 0 to n-2 do
  begin
    for j := 0 to n-i-2 do
    begin
      if arr[j] > arr[j+1] then
      begin
        temp := arr[j];
        arr[j] := arr[j+1];
        arr[j+1] := temp;
      end;
    end;
  end;
end;

end.
