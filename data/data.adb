-- ПЗВКС
-- Лабораторна 1 (Програмування потоків)
-- A = B * (MB * MC)
-- MG = SORT(MF) * MK + ML
-- O = MAX(MP * MR) * V
-- Ярмолка Богдан Ігорович
-- ІМ-22
-- 16.02.2025

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Data is
   procedure printNewLineInConsole is
   begin
      New_Line;
   end printNewLineInConsole;

   procedure printTextInConsole(text: String) is
   begin
      Put(text);
   end printTextInConsole;

   procedure printVectorInConsole(V: Vector) is
   begin
      for i in 0..N loop
         Put(Item => Integer'Image(V(i)));
      end loop;
   end printVectorInConsole;

   function inputFromKeyboard(text: String) return Integer is
      Num: Integer;
   begin
      Put(text);
      Get(Num);
      return Num;
   end inputFromKeyboard;

   function formatIntegerInString(num: Integer) return String is
   begin
      return Integer'Image(num)(2..Integer'Image(num)'Length);
   end formatIntegerInString;

   procedure getVectorFromKeyboard(V: in out Vector; preText: String) is
   begin
      for i in 0..N loop
         V(i) := inputFromKeyboard(preText & " [" & formatIntegerInString(i) & "]: ");
      end loop;
   end getVectorFromKeyboard;

   procedure getMatrixFromKeyboard(M: in out Matrix; preText: String) is
      formatedI: String := " ";
      formatedJ: String := " ";
   begin
      for i in 0..N loop
         formatedI := formatIntegerInString(i);
         for j in 0..N loop
            formatedJ := formatIntegerInString(j);
            M(i, j) := inputFromKeyboard(preText & " [" & formatedI & ", " & formatedJ & "]: ");
         end loop;
      end loop;
   end getMatrixFromKeyboard;

   function multiplyMatrices(firstM: Matrix; secondM: Matrix) return Matrix is
      resM: Matrix;
   begin
      for i in 0..N loop
         for j in 0..N loop
            resM(i, j) := 0;
            for k in 0..N loop
               resM(i, j) := resM(i, j) + firstM(i, k) * secondM(k, j);
            end loop;
         end loop;
      end loop;

      return resM;
   end multiplyMatrices;

   function multiplyVectorOnMatrix(V: Vector; M: Matrix) return Vector is
      resV: Vector;
   begin
      for i in 0..N loop
         resV(i) := 0;
         for j in 0..N loop
            resV(i) := resV(i) + V(j) * M(j, i);
         end loop;
      end loop;

      return resV;
   end multiplyVectorOnMatrix;
end Data;