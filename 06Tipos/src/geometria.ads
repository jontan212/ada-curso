package Geometria is

   type Distancia is new Float;
   type Area is new Float;
   subtype Metros is Distancia;

   function "*"
     (Left, Right : in Distancia) return Area; -- Sobrecarga el operador

end Geometria;
