package body Selva is
  --  quito el Constructor porque Animal es abstracta
  --  function Create (Un_Nombre : String) return Animal is
  --    Result : Animal := new Clase_Animal;
  --  begin
  --    Result.Nomnre := To_Unbounded_String (Un_Nombre);
  --    return Result;
  --  end Create;

  function Get_Nombre (This : in Clase_Animal) return String is
  begin
    return To_String (This.Nombre);
  end Get_Nombre;

  function Create_Leon (Un_Nombre : String) return Animal is
    Result : Animal := new Clase_Leon;
  begin
    Result.Nombre := To_Unbounded_String (Un_Nombre);
    return Result;
  end Create_Leon;

  procedure Hablar (This : in Clase_Leon) is
  begin
    Put_Line ("Roooooooooaaaaaaaaaaaaaarrrrrrrrrrr");
  end Hablar;

  function Create_Jirafa (Un_Nombre : String) return Animal is
    Result : Animal := new Clase_Jirafa;
  begin
    Result.Nombre := To_Unbounded_String (Un_Nombre);
    return Result;
  end Create_Jirafa;

  procedure Hablar (This : in Clase_Jirafa) is
  begin
    Put_Line ("Soy una jirafa y no emito sonido");
  end Hablar;

  function Create_Aguila (Un_Nombre : String) return Animal is
    Result : Animal := new Clase_Aguila;
  begin
    Result.Nombre := To_Unbounded_String (Un_Nombre);
    return Result;
  end Create_Aguila;

  procedure Hablar (This : in Clase_Aguila) is
  begin
    Put_Line ("Soy una Aguila");
  end Hablar;
end Selva;
