with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   Buf : String := "Hola ...";

   Full_Name : String := "John Smith";
begin
   Buf (6 .. 8) := "Bob";
   --  Esto funciona porque el String
   --  a la derecha tiene la misma longitud
   --  del slice(porción) reemplazada

   --  Imprime "Hola Bob"
   Put_Line (Buf);
   --  Imprime "Hola John"
   Put_Line ("Hola " & Full_Name (1 .. 4));
end Main;
