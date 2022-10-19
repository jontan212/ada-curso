with Ada.Text_IO; use Ada.Text_IO;
procedure Integer_Type_Example is
   -- Declarar un tipo integer con signo,
   -- y dar los límites
   type My_Int is range -1 .. 20;
   --                         ^ Límite máximo
   --                   ^ Límite mínimo
begin
   for I in My_Int loop
      Put_Line (My_Int'Image (I));
      --              ^ El atributo 'Image
      --                convierte el valor
      --                en una cadena
   end loop;
end Integer_Type_Example;
