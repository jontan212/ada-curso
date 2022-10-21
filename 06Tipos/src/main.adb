with Ada.Text_IO;       use Ada.Text_IO;
with Geometria;         use Geometria;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
procedure Main is
   --type Cantidad is new Integer;
   --type Cantidad is new Natural;
   --  type Cantidad is range 0..300;
   --  type Cantidad is range 0 .. Integer'Last;
   --  type Cantidad is range 0 .. 2**63 - 1; -- Uso 64 bits
   type Cantidad is range 0 .. 2**127 - 1; -- Uso 128 bits

   --type Cantidad_Peras is new Integer;
   --type Cantidad_Manzanas is new Integer;
   subtype Cantidad_Peras is Cantidad;
   subtype Cantidad_Manzanas is Cantidad;
   Peras    : Cantidad_Peras;
   Manzanas : Cantidad_Manzanas;
   Frutas   : Cantidad;
   --Total    : Integer;
begin
   Peras    := 2;
   Manzanas := 4;
   -- Peras    := Manzanas; No fucniona en ADA
   Frutas := Peras + Manzanas;
   -- Total  := Peras + Manzanas; No funciona
   Put_Line ("En total tengo " & Frutas'Image & " frutas");

   Frutas := 300;
   Frutas := Frutas + 50;
   Frutas := 3**3;
   Put_Line ("En total tengo " & Frutas'Image & " frutas");

   declare
      type Mi_Tipo is new Integer;
      Variable : Mi_Tipo;
   begin
      Variable := 3;
   end;

   --  declare
   --     type Distancia is new Float;
   --     type Area is new Float;
   --     Base       : Distancia;
   --     Altura     : Distancia;
   --     Superficie : Area;
   --
   --     procedure Procedure_En_Declare is
   --     begin
   --        null;
   --     end Procedure_En_Declare;
   --
   --     function "*" (Left : in Distancia; Right : in Distancia) return Area is -- Sobrecarga el operador
   --     begin
   --        return Area (Float (Left) * Float (Right));
   --     end "*";
   --
   --  begin
   --     Base   := 10.0;
   --     Altura := 10.0;
   --     -- Superficie := Base * Altura; Asignación no compatible salvo que Area sea un subtipo
   --     --Superficie := Area (Base * Altura); -- Se castea para almacenarlo
   --     Superficie := Base * Altura; -- Ahora es valida luego de declarar la función
   --  end;

   -- Utilizando paquete
   --  declare
   --     Base           : Distancia := 10.0;
   --     Altura         : Distancia := 5.0;
   --     Area_Triangulo : Area;
   --  begin
   --     Area_Triangulo := (Base * Altura) / 2.0;
   --  end;

   --  declare
   --     type Dias is
   --       (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --     type Meses is
--       (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre,
   --        Octubre, Noviembre, Diciembre);
   --     Primer_Dia_Semana : Dias;
   --  begin
   --     Primer_Dia_Semana := Lunes;
   --     for Dia in Dias loop
   --        Put_Line ("Hoy es " & Dia'Image);
   --        case Dia is
   --           when Lunes =>
   --              Put_Line ("Feliz comienzo de Semana");
   --           when Sabado .. Domingo =>
   --              Put_Line ("Feliz Fin de semana");
   --           when Martes .. Jueves =>
   --              Put_Line ("A tope en la semana");
   --           when Viernes =>
   --              Put_Line ("Tu cuerpo lo sabe");
   --        end case;
   --     end loop;

   --  declare
   --     type Max_1000 is mod 1_000; --  va de 0 a 1000
   --     Numero : Max_1000;
   --  begin
   --     Numero := 500;
   --     Put_Line ("Vale " & Numero'Image);
   --     Numero := Numero + 400;
   --     Put_Line ("Ahora Vale " & Numero'Image);
   --     Numero := Numero + 102;
   --     Put_Line ("Ahora Vale " & Numero'Image);
   --  end;

   -- Tipos de datos flotantes con precision
   declare
      type Dinero is digits 2;
      Riqueza : Dinero;
   begin
      Riqueza := 100.438;
      Put (Float(Riqueza), Aft => Dinero'Digits, Exp => 0); -- Redondea el resultado
   end;

end Main;
