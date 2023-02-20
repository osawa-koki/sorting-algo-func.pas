unit QuickSort;

interface

type
  IntArray = array of Integer;

procedure quick_sort(var arr: IntArray);

implementation

procedure QuickSortImpl(var arr: IntArray; low, high: Integer);
var
  i, j, pivot, temp: Integer;
begin
  if low < high then
  begin
    pivot := arr[low];
    i := low;
    j := high;
    while i < j do
    begin
      while (i <= high) and (arr[i] <= pivot) do
      begin
        i := i + 1;
      end;

      while (j >= low) and (arr[j] > pivot) do
      begin
        j := j - 1;
      end;

      if i < j then
      begin
        temp := arr[i];
        arr[i] := arr[j];
        arr[j] := temp;
      end;
    end;
    temp := arr[j];
    arr[j] := arr[low];
    arr[low] := temp;

    QuickSortImpl(arr, low, j - 1);
    QuickSortImpl(arr, j + 1, high);
  end;
end;

procedure quick_sort(var arr: IntArray);
begin
  QuickSortImpl(arr, 0, Length(arr) - 1);
end;

end.
