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
   if N < 1000 then
      printTextInConsole("T2 started");
      printNewLineInConsole;
      printNewLineInConsole;
      
      getMatrixFromKeyboard(MF, "T2, MF");
      getMatrixFromKeyboard(MK, "T2, MK");
      getMatrixFromKeyboard(ML, "T2, ML");
   
      sortMatrix(MF);
      MG := addMatrices(multiplyMatrices(MF, MK), ML);

      printNewLineInConsole;
      printTextInConsole("T2, MG = ");
      printNewLineInConsole;
      printMatrixInConsole(MG);

      printNewLineInConsole;
      printTextInConsole("T2 finished");
   else
      printTextInConsole("Not realized yet");
   end if;
end T2;