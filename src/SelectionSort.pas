unit SelectionSort;

interface

type
  IntegerArray = array of Integer;

procedure selection_sort(var arr: IntegerArray);

implementation

procedure selection_sort(var arr: IntegerArray);
var
  i, j, min_idx, tmp: integer;
begin
  for i := 0 to Length(arr) - 2 do
  begin
    min_idx := i;
    for j := i + 1 to Length(arr) - 1 do
    begin
      if arr[j] < arr[min_idx] then
      begin
        min_idx := j;
      end;
    end;
    if min_idx <> i then
    begin
      tmp := arr[i];
      arr[i] := arr[min_idx];
      arr[min_idx] := tmp;
    end;
  end;
end;

end.
