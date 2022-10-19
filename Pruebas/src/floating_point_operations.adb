with Ada.Text_IO; use Ada.Text_IO;
procedure floating_point_operations is
   A : Float := 2.5;
begin
   A := abs (A - 4.5);
   Put_Line ("El valor de A es " & Float'Image (A));

   A := A**2 + 1.0;
   Put_Line ("El valor de A es " & Float'Image (A));
end floating_point_operations;
