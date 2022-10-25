with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;           use Ada.Text_IO;
procedure Main is
   type Edad is range 0 .. 150;
   Nombre       : Unbounded_String;
   Apellido     : Unbounded_String;
   Edad_Persona : Edad;
begin
   Put_Line ("Cual es tu nombre?");
   Nombre := To_Unbounded_String (Get_Line);
end Main;
