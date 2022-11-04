with Ada.Text_IO; use Ada.Text_IO;
with Measurements;

procedure Main is
   subtype Degrees is Measurements.Degree_Celsius;
   T : Degrees renames Measurements.Current_Temperature;
begin
   T := 5.0;
   Put_Line (Degrees'Image (T));
   Put_Line (Degrees'Image (Measurements.Current_Temperature));

   T := T + 2.5;
   Put_Line (Degrees'Image (T));
   Put_Line (Degrees'Image (Measurements.Current_Temperature));

end Main;
