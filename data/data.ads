-- ПЗВКС
-- Лабораторна 1 (Програмування потоків)
-- A = B * (MB * MC)
-- MG = SORT(MF) * MK + ML
-- O = MAX(MP * MR) * V
-- Ярмолка Богдан Ігорович
-- ІМ-22
-- 16.02.2025

package Data is
   N: constant Integer := 2 - 1;
   
   type Vector is array (0..N) of Integer;
   type Matrix is array (0..N, 0..N) of Integer;

   procedure printNewLineInConsole;
   procedure printTextInConsole(text: String);
   procedure printVectorInConsole(V: Vector);
   procedure printMatrixInConsole(M: Matrix);

   procedure fillVectorFromKeyboard(V: in out Vector; preText: String);
   procedure fillMatrixFromKeyboard(M: in out Matrix; preText: String);
   procedure sortMatrix(M: in out Matrix);
   procedure fillVectorByNums(V: in out Vector; num: Integer);
   procedure fillMatrixByNums(M: in out Matrix; num: Integer);

   function multiplyMatrices(firstM: Matrix; secondM: Matrix) return Matrix;
   function multiplyVectorOnMatrix(V: Vector; M: Matrix) return Vector;
   function addMatrices(firstM: Matrix; secondM: Matrix) return Matrix;
   function maxMatrix(M: Matrix) return Integer;
   function multiplyVectorOnNumber(num: Integer; V: Vector) return Vector;
end Data;