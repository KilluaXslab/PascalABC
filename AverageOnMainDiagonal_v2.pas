program DiagonalAverage;

var
  A: array[1..100, 1..100] of Integer;
  n, i, j: Integer;
  sum: Integer;
  average: Real;

begin
  // Вводимо розмірність масиву
  Write('Enter the size of the matrix: ');
  ReadLn(n);
  
  // Генеруємо значення для матриці в діапазоні від -100 до 100
  Randomize;  // Ініціалізація генератора випадкових чисел
  WriteLn('Generated matrix:');
  
  for i := 1 to n do
    for j := 1 to n do
    begin
      A[i, j] := Random(201) - 100;  // Генерація числа в діапазоні від -100 до 100
      Write(A[i, j]:5);  // Виведення елементів матриці
    end;
  WriteLn;
  
  // Обчислюємо суму елементів головної діагоналі
  sum := 0;
  for i := 1 to n do
    sum := sum + A[i, i];
  
  // Обчислюємо середнє арифметичне
  average := sum / n;
  
  // Виводимо результат
  WriteLn('The average of the main diagonal elements is: ', average:0:2);
end.

