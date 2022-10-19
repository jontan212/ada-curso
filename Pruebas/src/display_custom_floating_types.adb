with Ada.Text_IO; use Ada.Text_IO;
procedure Display_Custom_Floating_Types is
   type T3 is digits 3;
   type T18 is digits 18;

   C1 : constant := 1.0e-4;

   A : constant T3  := 1.0 + C1;
   B : constant T18 := 1.0 + C1;
begin
   Put_Line ("El valor de A es " & T3'Image (A));
   Put_Line ("El valor de B es " & T18'Image (B));
end Display_Custom_Floating_Types;
