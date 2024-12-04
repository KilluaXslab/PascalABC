program DiagonalAverage;

var
  A: array[1..100, 1..100] of Integer;
  n,i,j: Integer;
  sum: Integer;
  average: Real;

begin
  // Вводимо розмірність масиву
  Write('Enter the size of the matrix: ');
  ReadLn(n);
  
  // Вводимо елементи масиву
  WriteLn('Enter the elements of the matrix:');
  for i := 1 to n do
    for j := 1 to n do
      Read(A[i, j]);
  
  // Обчислюємо суму елементів головної діагоналі
  sum := 0;
  for i := 1 to n do
    sum := sum + A[i, i];
  
  // Обчислюємо середнє арифметичне
  average := sum / n;
  
  // Виводимо результат
  WriteLn('The average of the main diagonal elements is: ', average:0:2);
end.
