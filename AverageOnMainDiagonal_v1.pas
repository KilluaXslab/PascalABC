program DiagonalAverage;

var
  A: array[1..100, 1..100] of Integer;
  n,i,j: Integer;
  sum: Integer;
  average: Real;

begin
  // ������� ��������� ������
  Write('Enter the size of the matrix: ');
  ReadLn(n);
  
  // ������� �������� ������
  WriteLn('Enter the elements of the matrix:');
  for i := 1 to n do
    for j := 1 to n do
      Read(A[i, j]);
  
  // ���������� ���� �������� ������� �������
  sum := 0;
  for i := 1 to n do
    sum := sum + A[i, i];
  
  // ���������� ������ �����������
  average := sum / n;
  
  // �������� ���������
  WriteLn('The average of the main diagonal elements is: ', average:0:2);
end.
