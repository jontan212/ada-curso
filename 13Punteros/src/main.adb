with Ada.Text_IO; use Ada.Text_IO;
with
 Ada.Containers
  .Vectors; --use Ada.Containers.Vectors; al ser un paquete genérico no se puede usar "use"
with Juego; use Juego;
with IO_Enums;

procedure Main is

begin
  --  declare
  --    A : Integer;
  --    B : Integer;
  --    C : Integer;
  --  begin
  --    A := 10;
  --    B := 20;
  --    C := A;
  --    A := 40;
  --    Put_Line (C'Image);
  --  end;

  --  declare
  --    type Puntero_Integer is access Integer;
  --    --  type Puntero_Integer is access Integer; --Es incompatible
  --    PTR_A : Puntero_Integer := null;
  --    PTR_B : Puntero_Integer := null;
  --    PTR_C : Puntero_Integer := null;
  --  begin
  --    PTR_A     := new Integer'(10);
  --    PTR_A     := new Integer'(20);
  --    PTR_C     := PTR_A;
  --    PTR_A.all := 40;
  --    --  PTR_A := new Integer'(10); -- Genero un nuevo espacio en el heap y pierdo l referencia original
  --    --  Put_Line(PTR_A.'Image); --No tenemos el image para los punteros
  --    Put_Line (PTR_A.all'Image);
  --  end;

--    declare
--  --  Declarar un tipo para un registro que sea un punto(X, Y)
--      type Punto is record
--        X : Integer;
--        Y : Integer;
--      end record;
--  --  Declarar un tipo que sea un puntero(access) a un punto
--      type Puntero_Punto is access Punto;
--  --  Declarar un tipo de a arreglo de punteros de puntos..
--      --  type Array_Puntero_Punto is array (Natural range <>) of Puntero_Punto;
--      package Vector_Puntos is new Ada.Containers.Vectors
--       (Index_Type => Natural, Element_Type => Puntero_Punto);

--      Mi_Punto : Puntero_Punto;
--      --  Muchos_Puntos : Array_Puntero_Punto (0 .. 5) := (others => null);
--      Muchos_Puntos : Vector_Puntos.Vector;
--    begin
--      --  Mi_Punto := new Punto'(10, 10);
--      --  Mi_Punto := new Punto'(X => 10, Y => 20);
--      --  Instancio 5 puntos
--      --  for Index in Muchos_Puntos'Range loop
--      --    Muchos_Puntos (Index) := new Punto'(Index + 3, Index + 2);
--      --  end loop;
--      for Index in 1 .. 10 loop
--        Mi_Punto := new Punto'(Index + 3, Index + 2);
--        Muchos_Puntos.Append (Mi_Punto);
--      end loop;

--      --  for I in Muchos_Puntos'Range loop
--      --    Mi_Punto := Muchos_Puntos (I);
--      --    -- En principio con punteros para obtener un valor va el All
--      --    --  Set_Col (Positive_Count (Mi_Punto.X));
--      --    --  Set_Line (Positive_Count (Mi_Punto.Y));
--      --    -- Pero Ada en los registros me permite obviar el All
--      --    -- Desfericación automática
--      --    Set_Col (Positive_Count (Mi_Punto.X));
--      --    Set_Line (Positive_Count (Mi_Punto.Y));
--      --    Put_Line ("*");
--      --  end loop;

--      for Punto_Actual of Muchos_Puntos loop
--        Set_Col (Positive_Count (Punto_Actual.X));
--        Set_Line (Positive_Count (Punto_Actual.Y));
--        Put_Line ("*");
--      end loop;
--    end;

  declare
    Profesion : Profesiones;
    package Profesiones_IO is new IO_Enums (Enum_Type => Profesiones);
  begin
    Profesion := Profesiones_IO.Get_Enum;
  end;
end Main;
