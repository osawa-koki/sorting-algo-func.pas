program Main;

uses
  Display;

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

  Show('Original', ary);

  Halt(0);

end.
