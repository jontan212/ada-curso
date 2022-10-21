with Ada.Text_IO; use Ada.Text_IO;

procedure Illegal_Example is
   -- Declarar dos tipos de coma flotante diferentes
   type Meters is new Float;
   type Miles is new Float;

   Dist_Imperial : Miles;

   
   Dist_Metric : constant Meters := 1_000.0;
begin
   -- No es correcto: los tipos no coinciden
   Dist_Imperial := Dist_Metric * 621.371e-6;
   Put_Line (Miles'Image (Dist_Imperial));
end Illegal_Example;
