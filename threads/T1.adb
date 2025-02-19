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

package body T1 is
   procedure run is
      -- init necessary variables
      A: Vector;
      Ba: Vector;
      MB: Matrix;
      MC: Matrix;
   begin
      -- start T1 execution
      printTextInConsole("T1 started");

      -- check N value
      if N < 1000 then
         -- fill variables from keyboard
         fillMatrixFromKeyboard(MB, "T1, MB");
         fillMatrixFromKeyboard(MC, "T1, MC");
         fillVectorFromKeyboard(B, "T1, B");
      else
         -- fill variables by nums
         fillMatrixByNums(MB, 1);
         fillMatrixByNums(MC, 2);
         fillVectorByNums(B, 3);
      end if;

      -- do calculations
      A := multiplyVectorOnMatrix(B, multiplyMatrices(MB, MC));

      if N < 1000 then
         -- print results
         printTextInConsole("A = ");
         printVectorInConsole(A);
      end if;

      -- finish T1
      printNewLineInConsole;
      printTextInConsole("T1 finished");
   end run;
end T1;