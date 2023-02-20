program Main;

uses
  Output,
  Display,
  Swap,
  ToNoSQL;

const
  ARRAY_SIZE = 10;

type
  IntegerArray = array[0..ARRAY_SIZE-1] of Integer;
  StringArray = array[0..4] of String;

var
  num1, num2, sum : integer;
  i, n : integer;
  languages : array[1..5] of string;
  arr: IntegerArray;
  x, y : integer;
  databases : StringArray;

begin
  writeln('Hello, World!');

  // 変数に値を代入
  num1 := 5;
  num2 := 10;
  sum := num1 + num2;
  writeln('The sum of ', num1, ' and ', num2, ' is ', sum);

  // 入力の受け取り
  writeln('Enter a number: ');
  readln(n);

  // 入力された値を出力
  writeln('You entered ', n);

  // 偶数か奇数かを判定
  if n mod 2 = 0 then
    writeln('The number is even.')
  else
    writeln('The number is odd.');

  // ループ
  for i := 1 to n do
    writeln(i);

  // 配列
  languages[1] := 'COBOL';
  languages[2] := 'FORTRAN';
  languages[3] := 'Pascal';
  languages[4] := 'ALGOL';
  languages[5] := 'BASIC';
  for i := 1 to 5 do
    writeln(languages[i]);

  // 関数の呼び出し
  PrintText('Hello Procedure!');

  // 配列の初期化
  for i := 0 to ARRAY_SIZE-1 do
  begin
    arr[i] := i;
  end;

  // 配列の表示
  Show('Array', arr);

  // 引数の値渡しと参照渡し
  x := 10;
  y := 20;
  writeln('before: ', 'x(val) = ', x, ', y(var) = ', y);
  DoSwap(x, y);
  writeln('after : ', 'x(val) = ', x, ', y(var) = ', y);

  // 配列の値渡しと参照渡し
  databases[1] := 'Oracle';
  databases[2] := 'MySQL';
  databases[3] := 'PostgreSQL';
  databases[4] := 'SQLite';
  databases[5] := 'MariaDB';

  writeln('before: ');
  for i := 1 to 5 do
    writeln('  ', databases[i]);

  ToNoSQLByVal(databases);

  writeln('by val: ');
  for i := 1 to 5 do
    writeln('  ', databases[i]);

  ToNoSQLByRef(databases);

  writeln('by ref: ');
  for i := 1 to 5 do
    writeln('  ', databases[i]);

  Halt(0);
  
end.
