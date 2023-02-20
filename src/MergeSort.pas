unit MergeSort;

interface

type
  IntArray = array of Integer;

procedure merge_sort(var arr: IntArray);

implementation

procedure Merge(var arr: IntArray; low, mid, high: Integer);
var
  i, j, k: Integer;
  temp: IntArray;
begin
  SetLength(temp, high-low+1);
  i := low;
  j := mid + 1;
  k := 0;

  while (i <= mid) and (j <= high) do
  begin
    if arr[i] < arr[j] then
    begin
      temp[k] := arr[i];
      i := i + 1;
    end
    else
    begin
      temp[k] := arr[j];
      j := j + 1;
    end;
    k := k + 1;
  end;

  while i <= mid do
  begin
    temp[k] := arr[i];
    i := i + 1;
    k := k + 1;
  end;

  while j <= high do
  begin
    temp[k] := arr[j];
    j := j + 1;
    k := k + 1;
  end;

  for i := low to high do
  begin
    arr[i] := temp[i-low];
  end;
end;

procedure MergeSortImpl(var arr: IntArray; low, high: Integer);
var
  mid: Integer;
begin
  if low < high then
  begin
    mid := (low + high) div 2;
    MergeSortImpl(arr, low, mid);
    MergeSortImpl(arr, mid + 1, high);
    Merge(arr, low, mid, high);
  end;
end;

procedure merge_sort(var arr: IntArray);
begin
  MergeSortImpl(arr, 0, Length(arr) - 1);
end;

end.
