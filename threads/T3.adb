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
   if N < 1000 then
      printTextInConsole("T3 started");
      printNewLineInConsole;
      printNewLineInConsole;
      
      getMatrixFromKeyboard(MP, "T3, MP");
      getMatrixFromKeyboard(MR, "T3, MR");
      getVectorFromKeyboard (V, "T3, V");
   
      O := multiplyVectorOnNumber(maxMatrix(multiplyMatrices(MP, MR)), V);

      printNewLineInConsole;
      printTextInConsole("T3, O = ");
      printVectorInConsole(O);

      printNewLineInConsole;
      printTextInConsole("T3 finished");
   else
      printTextInConsole("Not realized yet");
   end if;
end T3;