unit ShellSort;

interface

type
  IntegerArray = array of Integer;

procedure shell_sort(var arr: IntegerArray);

implementation

procedure shell_sort(var arr: IntegerArray);
var
  i, j, gap, temp: Integer;
begin
  gap := Length(arr) div 2;
  while gap > 0 do
  begin
    for i := gap to Length(arr)-1 do
    begin
      temp := arr[i];
      j := i;
      while (j >= gap) and (arr[j-gap] > temp) do
      begin
        arr[j] := arr[j-gap];
        j := j - gap;
      end;
      arr[j] := temp;
    end;
    gap := gap div 2;
  end;
end;

end.
