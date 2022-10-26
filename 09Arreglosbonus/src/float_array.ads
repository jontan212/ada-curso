package Float_Array is

   type Array_Float is array (Positive range <>) of Float;

   function Fill_Random (N : Integer) return Array_Float;

   function Sumatoria (Entrada : Array_Float) return Float;

   function Promedio (Arreglo_Media : in Array_Float) return Float;

   procedure Mostrar (Arr : Array_Float);

   function Mayores (Arreglo : Array_Float; Valor : Float) return Array_Float;

end Float_Array;
