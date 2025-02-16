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
   if N < 1000 then
      printTextInConsole("T1 started");
      printNewLineInConsole;
      printNewLineInConsole;
      
      getMatrixFromKeyboard(MB, "T1, MB");
      getMatrixFromKeyboard(MC, "T1, MC");
      getVectorFromKeyboard (B, "T1, B");
   
      A := multiplyVectorOnMatrix(B, multiplyMatrices(MB, MC));

      printNewLineInConsole;
      printTextInConsole("A = ");
      printVectorInConsole(A);

      printNewLineInConsole;
      printTextInConsole("T1 finished");
   else
      printTextInConsole("Not realized yet");
   end if;
end T1;