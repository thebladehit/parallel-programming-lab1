-- ПЗВКС
-- Лабораторна 1 (Програмування потоків)
-- A = B * (MB * MC)
-- MG = SORT(MF) * MK + ML
-- O = MAX(MP * MR) * V
-- Ярмолка Богдан Ігорович
-- ІМ-22
-- 16.02.2025

with T1;
with T2;
with T3;

procedure Lab1 is
   task type Task1 is
      pragma Storage_Size(20_000_000);
      pragma Priority(7);
      pragma CPU(1);
   end Task1;

   task type Task2 is
      pragma Storage_Size(30_000_000);
      pragma Priority(7);
      pragma CPU(2);
   end Task2;

   task type Task3 is
      pragma Storage_Size(30_000_000);
      pragma Priority(7);
      pragma CPU(3);
   end Task3;

   task body Task1 is
   begin
      T1.run;
   end Task1;

   task body Task2 is
   begin
      T2.run;
   end Task2;

   task body Task3 is
   begin
      T3.run;
   end Task3;

   Thread1: Task1;
   Thread2: Task2;
   Thread3: Task3;
begin
   null;
end Lab1;