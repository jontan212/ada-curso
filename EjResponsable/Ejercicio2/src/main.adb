with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
  Salida : String (1 .. 9);
  procedure Copiar_String (Sobrante : Character) is
    Variable : String (1 .. 5) := Get_Line;
  begin
    if Salida'Length > Variable'Length then

      Salida (1 .. 5) := Variable;
      for I in Salida'Range loop
        if I > Variable'Length then
          Salida (I) := Sobrante;
        end if;
      end loop;

    else
      Salida (1 .. 5) := Variable;
    end if;
    Put_Line (Salida);
  end Copiar_String;

begin
  Copiar_String ('*');
end Main;
