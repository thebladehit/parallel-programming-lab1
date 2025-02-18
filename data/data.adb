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

   procedure printMatrixInConsole(M: Matrix) is 
   begin
      for i in 0..N loop
         for j in 0..N loop
            Put(Item => Integer'Image(M(i, j)));
         end loop;
         New_Line;
      end loop;
   end printMatrixInConsole;

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

   procedure fillVectorFromKeyboard(V: in out Vector; preText: String) is
   begin
      for i in 0..N loop
         V(i) := inputFromKeyboard(preText & " [" & formatIntegerInString(i) & "]: ");
      end loop;
   end fillVectorFromKeyboard;

   procedure fillMatrixFromKeyboard(M: in out Matrix; preText: String) is
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
   end fillMatrixFromKeyboard;

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

   function addMatrices(firstM: Matrix; secondM: Matrix) return Matrix is
      resM: Matrix;
   begin
      for i in 0..N loop
         for j in 0..N loop
            resM(i, j) := firstM(i, j) + secondM(i, j);
         end loop;
      end loop;

      return resM;
   end addMatrices;

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

   function multiplyVectorOnNumber(num: Integer; V: Vector) return Vector is
      resV: Vector;
   begin 
      for i in 0..N loop
         resV(i) := num * V(i);
      end loop;

      return resV;
   end multiplyVectorOnNumber;

   function maxMatrix(M: Matrix) return Integer is
      maxV: Integer;
   begin
      maxV := M(0, 0);

      for i in 0..N loop
         for j in 0..N loop
            if (M(i, j) > maxV) then
               maxV := M(i, j);
            end if;
         end loop;
      end loop;

      return maxV;
   end maxMatrix;

   procedure sortMatrixRow(row: in out Vector) is
      curIdx, prevIdx: Integer;
   begin
      for i in 1..N loop
         curIdx := row(i);
         prevIdx := i - 1;
         while prevIdx >= 0 and row(prevIdx) > curIdx loop
            row(prevIdx + 1) := row(prevIdx);
            prevIdx := prevIdx - 1;
         end loop;
         row(prevIdx + 1) := curIdx;
      end loop;
   end sortMatrixRow;

   procedure sortMatrix(M: in out Matrix) is
      curElem, prevIdx: Integer;
   begin
      for row in 0..N loop
         for i in 1..N loop
            curElem := M(row, i);
            prevIdx := i - 1;
            while prevIdx >= 0 loop
               if M(row, prevIdx) > curElem then
                  M(row, prevIdx + 1) := M(row, prevIdx);
                  prevIdx := prevIdx - 1;
               else
                  exit;
               end if;
            end loop;
            M(row, prevIdx + 1) := curElem;
         end loop;
      end loop;
   end sortMatrix;

   procedure fillVectorByNums(V: in out Vector; num: Integer) is
   begin
      for i in 0..N loop
         V(i) := num;
      end loop;
   end fillVectorByNums;

   procedure fillMatrixByNums(M: in out Matrix; num: Integer) is
   begin
      for i in 0..N loop
         for j in 0..N loop
            M(i, j) := num;
         end loop;
      end loop;
   end fillMatrixByNums;
end Data;