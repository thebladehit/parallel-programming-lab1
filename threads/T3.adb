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

package body T3 is
   procedure run is
      -- init necessary variables
      O: Vector;
      MP: Matrix;
      MR: Matrix;
      V: Vector;
   begin
      -- start T3 execution
      printTextInConsole("T3 started");

      -- check N value
      if N < 1000 then   
         -- fill variables from keyboard
         fillMatrixFromKeyboard(MP, "T3, MP");
         fillMatrixFromKeyboard(MR, "T3, MR");
         fillVectorFromKeyboard (V, "T3, V");
      else
         -- fill variables by nums
         fillMatrixByNums(MP, 1);
         fillMatrixByNums(MR, 2);
         fillVectorByNums(V, 3);
      end if;

      -- do calculations
      O := multiplyVectorOnNumber(maxMatrix(multiplyMatrices(MP, MR)), V);

      if N < 1000 then
         -- print results
         printTextInConsole("T3, O = ");
         printVectorInConsole(O);
      end if;

      -- finish T3
      printNewLineInConsole;
      printTextInConsole("T3 finished");
   end run;
end T3;