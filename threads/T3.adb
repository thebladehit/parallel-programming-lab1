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

procedure T3 is
   O: Vector;
   MP: Matrix;
   MR: Matrix;
   V: Vector;
begin
   printTextInConsole("T3 started");
   printNewLineInConsole;
   printNewLineInConsole;

   if N < 1000 then   
      fillMatrixFromKeyboard(MP, "T3, MP");
      fillMatrixFromKeyboard(MR, "T3, MR");
      fillVectorFromKeyboard (V, "T3, V");
   else
      fillMatrixByNums(MP, 1);
      fillMatrixByNums(MR, 2);
      fillVectorByNums(V, 3);
   end if;

   O := multiplyVectorOnNumber(maxMatrix(multiplyMatrices(MP, MR)), V);

   printNewLineInConsole;
   printTextInConsole("T3, O = ");
   printVectorInConsole(O);

   printNewLineInConsole;
   printTextInConsole("T3 finished");
end T3;