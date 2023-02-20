program Main;

uses
  DisplayUnit,
  ShuffleUnit,
  BubbleSort,
  SelectionSort,
  InsertionSort,
  MergeSort,
  QuickSort;

const
  ARRAY_SIZE = 10;

type
  IntegerArray = array of Integer;

var
  ary: IntegerArray;
  i : Integer;

begin

  SetLength(ary, ARRAY_SIZE);

  for i := 0 to ARRAY_SIZE - 1 do
    ary[i] := i;

  Display('Original', ary);

  Shuffle(ary);
  Display('Shuffled', ary);

  bubble_sort(ary);
  Display('Bubble Sort', ary);

  Shuffle(ary);
  Display('Shuffled', ary);

  selection_sort(ary);
  Display('Selection Sort', ary);

  Shuffle(ary);
  Display('Shuffled', ary);

  insertion_sort(ary);
  Display('Insertion Sort', ary);

  Shuffle(ary);
  Display('Shuffled', ary);

  merge_sort(ary);
  Display('Merge Sort', ary);

  Shuffle(ary);
  Display('Shuffled', ary);

  quick_sort(ary);
  Display('Quick Sort', ary);

  Halt(0);

end.
