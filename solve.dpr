program SolveTask;

uses 
  SysUtils;

type
  TIntArray = array of Integer;
function CountZeroElements(arr: TIntArray; idx: Integer): Integer;
begin
  if idx >= Length(arr) then
    CountZeroElements := 0
  else
  begin

    if arr[idx] = 0 then
      CountZeroElements := 1 + CountZeroElements(arr, idx + 1)
    else
      CountZeroElements := CountZeroElements(arr, idx + 1);
  end;
end;

var
  arr: TIntArray;
  n, i: Integer;
begin
  Randomize;

  Write('Кол-во элементов массива: ');
  ReadLn(n);
  
  SetLength(arr, n);
  WriteLn('Массив:');
  for i := 0 to n - 1 do
  begin
    // arr[i] := Random(21) - 10;
    arr[i] := Random(3);
    Write(arr[i], ' ');
  end;
  WriteLn;
  
  WriteLn('Кол-во нулевых элементов в массиве: ', CountZeroElements(arr, 0));
  
  SetLength(arr, 0);
end.
