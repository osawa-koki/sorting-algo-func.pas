unit InsertionSort;

interface

type
  IntegerArray = array of Integer;

procedure insertion_sort(var arr: IntegerArray);

implementation

procedure insertion_sort(var arr: IntegerArray);
var
  i, j, temp: Integer;
begin
  for i := 1 to Length(arr) - 1 do
  begin
    temp := arr[i];
    j := i - 1;

    while (j >= 0) and (arr[j] > temp) do
    begin
      arr[j+1] := arr[j];
      j := j - 1;
    end;

    arr[j+1] := temp;
  end;
end;

end.
