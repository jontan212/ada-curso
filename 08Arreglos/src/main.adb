with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Strings.Unbounded;     use Ada.Strings.Unbounded;

procedure Main is
--  type Indice_Diez_Numeros is range 1 .. 10;
--  type Arreglo_Diez_Numeros is array (Indice_Diez_Numeros) of Integer;
--  Diez_Numeros : Arreglo_Diez_Numeros;
--  G            : Generator;
begin
   --  Cargo el arreglo de 10 numeros
   --  for I in Indice_Diez_Numeros loop
   --     Diez_Numeros (I) := Integer (Random (G) * Float (Integer'Last));
   --  end loop;
   --  Diez_Numeros := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

   --  for I in Arreglo_Diez_Numeros'First .. Arreglo_Diez_Numeros'Last loop
   --     Put_Line (Diez_Numeros (I)'Image);
   --  end loop;

   --  declare
   --     function "+" (Value : in String) return Unbounded_String renames
   --       To_Unbounded_String;
   --     type Dia is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --  Dia_En_Ingles : array (Dia) of Unbounded_String :=
   --    (To_Unbounded_String ("Monday"), To_Unbounded_String ("Tuesday"),
   --     To_Unbounded_String ("Wednesday"), To_Unbounded_String ("Thursday"),
   --     To_Unbounded_String ("Friday"), To_Unbounded_String ("Saturday"),
   --     To_Unbounded_String ("Sunday"));
   --  Dia_En_Ingles : array (Dia) of Unbounded_String :=
--    (+("Monday"), +("Tuesday"), +("Wednesday"), +("Thursday"), +("Friday"),
   --     +("Saturday"), +("Sunday"));
   --  Un_Dia : Dia;
   --  begin
   --  Un_Dia := Miercoles;
   --  Put_Line (To_String (Dia_En_Ingles (Un_Dia)));
   --  for Un_Dia in Dia_En_Ingles'Range loop
   --     Put_Line (To_String (Dia_En_Ingles (Un_Dia)));
   --  end loop;

   --  declare
   --  Declarar un tipo para un arreglo de 5 numeros
   --  Declarar una función que devuelve el arreglo del tipo anterior cargado
   --  con numeros al azar

   --     type Index_Arr is range 1 .. 5;
   --     type My_Arr is array (Index_Arr) of Natural;
   --
   --     function Fill_Arr (A : in out My_Arr) return My_Arr is
   --        G : Generator;
   --     begin
   --        for I in Index_Arr loop
   --           A (I) := Natural (Random (G) * Float (Natural'Last));
   --        end loop;
   --        return A;
   --     end Fill_Arr;
   --
   --     Arr : My_Arr;
   --  begin
   --     Arr := Fill_Arr (Arr);
   --     for I in Arr'Range loop
   --        Put_Line (Arr (I)'Image);
   --     end loop;
   --  end;
   --  end;

   --  declare
   --  type Array_Cinco_Numeros is array (1..5) of Positive;
   --  type Array_Siete_Numeros is array (1..7) of Positive;
   --  type Array_Diez_Numeros is array (1..10) of Positive;
   --  lo reemplazamos por ...
   --     type Range_Maximo is range 1 .. 50;
   --     type Array_Numeros is array (Range_Maximo range <>) of Positive;
   --     Diez_Numeros : Array_Numeros (1 .. 10);
   --  begin
   --  Diez_Numeros := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   --  Diez_Numeros := (1 => 1, 5 => 5, 7 => 7, others => 100);
   --  Put_Line ("El Array tiene " & Diez_Numeros'Length'Image & " elementos");
   --  for I in Diez_Numeros'Range loop
   --     Put_Line (Diez_Numeros (I)'Image);
   --  end loop;

   declare
      --  declarar un tipo que sea un arreglo de numeros
      type Array_Numeros is array (Integer range <>) of Integer;
      --  Declarar una funcion que recibe el un arreglo de numeros y devuelva un maximo
      function Max_Num (Arr : Array_Numeros) return Integer is
         Maximo : Integer := 0;
      begin
         for I in Arr'Range loop
            if Arr (I) > Maximo then
               Maximo := Arr (I);
            end if;
         end loop;
         return Maximo;
      end Max_Num;
      A : Array_Numeros (1 .. 5) := (1, 2, 6, 34, 1);

      Longitud_Ingresada : Integer;
   begin
      --  Put_Line (Max_Num (A)'Image);
      Put_Line ("Cuantos numeros desea ingresar?");
      Longitud_Ingresada := Integer'Value (Get_Line);
      declare
         Numeros : Array_Numeros (1 .. Longitud_Ingresada);
      begin
         for I in Numeros'Range loop
            Put_Line ("Ingrese el número" & I'Image);
            Numeros (I) := Integer'Value (Get_Line);
         end loop;

         Put_Line ("El m\u00e1ximo es" & Max_Num (Numeros)'Image);
      end;

   end;
end Main;
