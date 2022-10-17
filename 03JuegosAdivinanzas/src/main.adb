--  with Ada.Text_IO; use Ada.Text_IO;
--  with Ada.Numerics.Discrete_Random;
--
--  procedure Main is
--     subtype Random_Range is Integer range 1 .. 100;
--
--     package R is new Ada.Numerics.Discrete_Random (Random_Range);
--     use R;
--
--     G : Generator;
--     X : Random_Range;
--  begin
--     Reset (G);
--
--     Put_Line
--       ("Some random numbers between " & Integer'Image (Random_Range'First) &
--        " and " & Integer'Image (Random_Range'Last) & ":");
--
--     for I in 1 .. 10 loop
--        X := Random (G);
--        Put_Line (Integer'Image (X));
--     end loop;
--  end Main;

with Ada.Numerics.Float_Random, Ada.Float_Text_IO, Ada.Integer_Text_IO, Ada
  .Text_IO;
use Ada.Numerics.Float_Random, Ada.Float_Text_IO, Ada.Integer_Text_IO,
  Ada.Text_IO;

procedure Main is
   G : Generator;
   X : Integer;
begin
   Reset (G);

   for I in 1 .. 10 loop
      X := Integer (Random (G) * 100.0 + 1.0);
      Put_Line (Integer'Image (X));
   end loop;
end Main;
