with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO;         use Ada.Float_Text_IO;

package body Float_Array is


   --Declara una función que recibe un número N y me devuelve un arreglo
   --de N números al azar
   function Fill_Random (N : Integer) return Array_Float is
      Nuevo_Array : Array_Float (1 .. N);
      G           : Generator;
   begin
      for I in Nuevo_Array'Range loop
         Nuevo_Array (I) := Random (G) * 10.0 + 1.0;
      end loop;
      return Nuevo_Array;
   end Fill_Random;

   --Declarar una función que recibe una rreglo de ese tipo me devuelve la sumatoria con 'First y 'Last
   function Sumatoria (Entrada : Array_Float) return Float is
      Retorno : Float := 0.0;
   begin
      for I in Entrada'Range loop
         Retorno := Retorno + Entrada (I);
      end loop;
      return Retorno;
   end Sumatoria;

   --Declarar una función que recibe un arreglo de ese tipo y me devuelve la promedio
   function Promedio (Arreglo_Media : in Array_Float) return Float is
   begin
      return Sumatoria (Arreglo_Media) / Float (Arreglo_Media'Length);
   end Promedio;

   -- Procedimiento muestre arreglo
   procedure Mostrar (Arr : Array_Float) is
   begin
      for I in Arr'Range loop
         Put (Arr (I), Exp => 0);
      end loop;
   end Mostrar;

   --Mayores
   --Una función que reciba un array y un valor
   --Devuelve otro array con los valores mayores al parametro
   function Mayores (Arreglo : Array_Float; Valor : Float) return Array_Float
   is
      --Result:Array_Float(1..0); -- Un array vacío
      Aux : Array_Float :=
        Arreglo; -- copio el arreglo que tenga la misma longitud
      --  Indice_Mayores: range Array_Float'First .. Array_Float'Last;
      --subtype Tipo_Indice is Integer range Arreglo'Range;
      --Indice : Tipo_Indice := Arreglo'First;
      Indice : Integer := Arreglo'First;

   begin
      for I in Arreglo'Range loop
         if Arreglo (I) > Valor then
            Aux (Indice) := Arreglo (I);
            Indice       := Indice + 1;
         end if;
      end loop;

      declare
         Result : Array_Float
           (Arreglo'First .. Indice - 1); --Me puede quedar vacío
      begin
         Result := Aux (Arreglo'First .. Indice - 1); -- Slice
         return Result;
      end;
   end Mayores;

end Float_Array;
