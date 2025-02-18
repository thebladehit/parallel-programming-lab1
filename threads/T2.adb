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

procedure T2 is
   MG: Matrix;
   MF: Matrix;
   MK: Matrix;
   ML: Matrix;
begin
   printTextInConsole("T2 started");
   printNewLineInConsole;
   printNewLineInConsole;

   if N < 1000 then
      fillMatrixFromKeyboard(MF, "T2, MF");
      fillMatrixFromKeyboard(MK, "T2, MK");
      fillMatrixFromKeyboard(ML, "T2, ML");   
   else
      fillMatrixByNums(MF, 1);
      fillMatrixByNums(MK, 1);
      fillMatrixByNums(ML, 1);
   end if;

   sortMatrix(MF);
   MG := addMatrices(multiplyMatrices(MF, MK), ML);

   printNewLineInConsole;
   printTextInConsole("T2, MG = ");
   printNewLineInConsole;
   printMatrixInConsole(MG);

   printNewLineInConsole;
   printTextInConsole("T2 finished");
end T2;