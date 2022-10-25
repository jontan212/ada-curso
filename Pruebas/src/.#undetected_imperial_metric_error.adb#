with Ada.Text_IO; use Ada.Text_IO;

procedure Undetected_Imperial_Metric_Error is
   -- Declarar dos alias de tipo
   subtype Meters is Float;
   subtype Miles is Float;

   Dist_Imperial : Miles;

   -- Declarar una constante
   Dist_Metric : constant Meters := 100.0;
begin
   -- No es necesaria la conversión al tipo Miles:
   Dist_Imperial := (Dist_Metric * 1_609.0) / 1_000.0;

   -- No es correcto, pero no se detecta:
   Dist_Imperial := Dist_Metric;

   Put_Line (Miles'Image (Dist_Imperial));
end Undetected_Imperial_Metric_Error;
