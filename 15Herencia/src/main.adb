with Ada.Text_IO;               use Ada.Text_IO;
with Selva;                     use Selva;
with IO;                        use IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
procedure Main is
  --  Leon : Animal;
  --  Un_Animal : Animal;

  -- Declerao un vector de aniamles
  type Array_Animales is array (Positive range <>) of Animal;

  procedure Ask_Animales is
    Num_Animales : Integer := Get_Integer;
  begin
    Put_Line ("Cuantos animales quieres introducir?");
    declare
      Animales : Array_Animales (1 .. Num_Animales) := (others => null);
      G        : Generator;
      Azar     : Uniformly_Distributed;
    begin
      Reset (G);
      for I in Animales'Range loop
        -- Determinar un numero al azar
        -- Put_Line ("Introduzac el animal" & I);
        Azar := Random (G);

        -- Si el numero es <0.3 que agregue un leon
        -- Si es mayor a 0.7 que agregue una jirafa
        -- Sino que agregue a su animal de preferencia
        if Azar < 0.3 then
          Animales (I) := Create_Leon ("Mufasa");
        elsif Azar > 0.7 then
          Animales (I) := Create_Jirafa ("Jirafa");
        else
          Animales (I) := Create_Aguila ("EL Real");
        end if;
      end loop;

      Put_Line ("Los ruidos de la selva...");
      -- Recorrer el array de animales con un for of
      -- hacer que cada animal hable
      for Criatura of Animales loop
        Criatura.Hablar;
      end loop;

    end;
  end Ask_Animales;
begin
  --  Leon := Create ("Mufasa");

  --  Elijo uno u otro
  --  Un_Animal := new Clase_Leon;
  --  Un_Animal := new Clase_Jirafa;

  --  Ahora uso Constructores
  --  Un_Animal := Create_Leon ("Alex");
  --  Un_Animal := Create_Jirafa ("Mellman");
  --  Put_Line ("Hola soy " & Un_Animal.Get_Nombre);
  --  Un_Animal.Hablar;

  -- Pregunte al usuario cuantos animales quiere e incialize un arreglo de aniamles
  -- Agregar un bloque
  Ask_Animales;
end Main;
