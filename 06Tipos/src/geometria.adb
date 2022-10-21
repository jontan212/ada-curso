package body Geometria is

   function "*" (Left, Right : in Distancia) return Area
   is -- Sobrecarga el operador
   begin
      return Area (Float (Left) * Float (Right));
   end "*";

end Geometria;
