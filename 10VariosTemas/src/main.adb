with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is
begin
   --  declare
   --     type Nota is range 0 .. 10 with
   --       Default_Value => 7;
   --     type Array_Numeros is array (Positive range <>) of Integer with
   --       Default_Component_Value => 10;
   --     --   type Nota_Descriptiva is ("Excelente", "Muy Bueno"); -- No se puede
   --     --  type Array_Numeros is array (Positive range <>) of Nota with
   --     --    Default_Component_Value => 10;
   --     -- type Caracteres_ValIdes is ('A', 'B', 'C');
   --     -- type Caracteres_No_Valides is (1,2,3,4,5);
   --     Array_Vacio    : Array_Numeros (2 .. 1);
   --     Muchos_Numeros : Array_Numeros (1 .. 15) :=
   --       (1      => 2, 2 | 3 | 4 => 3, 5 => <>,
   --        others => 5); -- <> lo rellena con cualquier número
   --     Pedacito : Array_Numeros :=
   --       Muchos_Numeros (1 .. 4); -- Array Slices, se graba lo que tiene
   --     Muchos_Mas_Numeros : Array_Numeros := Muchos_Numeros & Pedacito;
   --     Mi_Nota            : Nota;
   --  begin
   --     --  Sobrecrisbir arrays
   --     Pedacito (1 .. 3) := Muchos_Numeros (2 .. 4);

   --     for I in Muchos_Mas_Numeros'Range loop
   --        --  Put_Line (Muchos_Numeros (I)'Image);
   --        --  Put_Line (Pedacito (I)'Image);
   --        Put_Line (Muchos_Mas_Numeros (I)'Image);
   --     end loop;
   --     Put_Line (Mi_Nota'Image);
   --     Put_Line ("El array vacío tiene longitud " & Array_Vacio'Length'Image);
   --  end;

   --  declare
   --     type Componente_Adn is (A, G, C, T);
   --     --(Adenina, Guanina,Citosina,Timina);
   --     --  Componente_Adn_As_String:array(Componente_Adn) of Unbounded_String :=("Adenina", "Guanina","Citosina","Timina");

   --     function To_String (Enum : Componente_Adn) return String is
   --     begin
   --        return
   --          (case Enum is when A => "Adenina", when G => "Guanina",
   --             when C            => "Citosina", when T => "Timina");

   --     end To_String;
   --     Componente : Componente_Adn := A;
   --  begin
   --     --  Put_Line(Componente'Image);
   --  end;

   declare
      type Fecha is record
         Dia : Integer range 1 .. 31;
         Mes : Integer range 1 .. 12;
         Año : Integer range 1_900 .. 3_000;
      end record;
      Nacimiento : Fecha := (20, 9, 1_980); -- Inicialización posicional
      Nacimiento : Fecha := (Dia => 20, Mes => 9, Año => 1_980);
   begin
      null;
   end;
end Main;
