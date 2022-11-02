package body Juego is
  function To_String (Value : in Jugador) return String is
  begin
    return
     Value.Profesion'Image & " " & To_String (Value.Nombre) & "(HP: " &
     Value.Hp'Image & ", Nivel: " & Value.Nivel'Image & ")";
  end To_String;

  function To_String (Value : in Profesiones) return String is
  begin
    return
     To_Upper (Value'Image (1 .. 1)) &
     To_Lower (Value'Image (2 .. Value'Image'Length));
  end To_String;
end Juego;
