-- ПЗВКС
-- Лабораторна 1 (Програмування потоків)
-- A = B * (MB * MC)
-- MG = SORT(MF) * MK + ML
-- O = MAX(MP * MR) * V
-- Ярмолка Богдан Ігорович
-- ІМ-22
-- 16.02.2025

with Data;
use Data;

procedure T1 is
   A: Vector;
   B: Vector;
   MB: Matrix;
   MC: Matrix;
begin
   printTextInConsole("T1 started");
   printNewLineInConsole;
   printNewLineInConsole;

   if N < 1000 then
      fillMatrixFromKeyboard(MB, "T1, MB");
      fillMatrixFromKeyboard(MC, "T1, MC");
      fillVectorFromKeyboard(B, "T1, B");
   else
      fillMatrixByNums(MB, 1);
      fillMatrixByNums(MC, 2);
      fillVectorByNums(B, 3);
   end if;

   A := multiplyVectorOnMatrix(B, multiplyMatrices(MB, MC));

   printNewLineInConsole;
   printTextInConsole("A = ");
   printVectorInConsole(A);

   printNewLineInConsole;
   printTextInConsole("T1 finished");
end T1;