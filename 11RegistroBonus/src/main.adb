with Ada.Text_IO;           use Ada.Text_IO;
with IO;                    use IO;
with Juego;                 use Juego;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is

  function Try_Get_Profesion (Profesion : out Profesiones) return Boolean is
  begin
    Profesion := Profesiones'Value (Get_NotEmpty_Line);
    return True;
  exception
    when others =>
      return False;
  end Try_Get_Profesion;

  function Get_Profesion
   (Prompt        : String := "";
    Error_Message : String := "Entrada Invalida. Reintente") return Profesiones
  is
    EntradaCorrecta : Boolean;
    Result          : Profesiones;
  begin
    if (Prompt'Length > 0) then
      Put_Line (Prompt);
    end if;

    for P in Profesiones'Range loop
      Put_Line (To_String (P));
    end loop;

    loop
      EntradaCorrecta := Try_Get_Profesion (Result);
      if (EntradaCorrecta) then
        return Result;
      end if;
      Put_Line (Error_Message);
    end loop;
  end Get_Profesion;

begin
  declare
    Lista_Jugadores :
     Jugadores (1 .. Get_Integer (Prompt => "Cuantos Jugadores son?"));
  begin
    for I in Lista_Jugadores'Range loop

      declare
        Nombre_Jugador : String :=
         Get_NotEmpty_Line (Prompt => "Como se llama el jugador " & I'Image);
        Campeon : Jugador :=
         (Nombre    => To_Unbounded_String (Nombre_Jugador),
          Profesion => Get_Profesion ("Cual es la profesion?"), others => <>);
      begin
        Lista_Jugadores (I) := Campeon;
      end;
    end loop;

    for Champ of Lista_Jugadores loop
      Put_Line (To_String (Champ));
    end loop;

  end;
end Main;
