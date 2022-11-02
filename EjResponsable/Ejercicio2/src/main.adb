with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
  Salida : String (1 .. 9);
  procedure Copiar_String (Sobrante : String) is
    Variable : String (1 .. 5) := Get_Line;
  begin
    Salida := Variable;
    Put_Line (Variable'Length'Image);

    Put_Line (Salida'Length'Image);
  end Copiar_String;

begin
  Copiar_String ("*");
end Main;
