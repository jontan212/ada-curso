with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   type Mod_Int is mod 2**5;
   --              ^ El rango es 0 .. 31

   A : constant Mod_Int := 20;
   B : constant Mod_Int := 15;

   M : constant Mod_Int := A + B;
   -- No hay desbordamiento aquí,
   -- M = (20 + 15) mod 32 = 3
begin
   for I in 1 .. M loop
      Put_Line ("Hola, Mundo!");
   end loop;
end Main;
