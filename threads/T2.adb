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

package body T2 is
   procedure run is
      -- init necessary variables
      MG: Matrix;
      MF: Matrix;
      MK: Matrix;
      ML: Matrix;
   begin
      -- start T2 execution
      printTextInConsole("T2 started");

      -- check N value
      if N < 1000 then
         -- fill variables from keyboard
         fillMatrixFromKeyboard(MF, "T2, MF");
         fillMatrixFromKeyboard(MK, "T2, MK");
         fillMatrixFromKeyboard(ML, "T2, ML");   
      else
         -- fill variables by nums
         fillMatrixByNums(MF, 1);
         fillMatrixByNums(MK, 1);
         fillMatrixByNums(ML, 1);
      end if;

      -- sort matrix
      sortMatrix(MF);
      -- do calculations
      MG := addMatrices(multiplyMatrices(MF, MK), ML);

      if N < 1000 then
         -- print results
         printTextInConsole("T2, MG = ");
         printMatrixInConsole(MG);
      end if;

      -- finish T2
      printNewLineInConsole;
      printTextInConsole("T2 finished");
   end run;
end T2;