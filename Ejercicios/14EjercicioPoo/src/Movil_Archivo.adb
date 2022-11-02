package body Movil_Archivo is
  function Create
   (VelocidadX : Velocidades; VelocidadY : Velocidades) return Movil
  is
    Result : Movil;
  begin
    Result := new Clase_Movil;

    Result.PosicionX  := 0;
    Result.PosicionY  := 0;
    Result.VelocidadX := VelocidadX;
    Result.VelocidadY := VelocidadY;

    return Result;
  end Create;

  function Get_PosicionX (This : Clase_Movil) return Posiciones is
  begin
    null;
  end Get_PosicionX;
  function Get_PosicionY (This : Clase_Movil) return Posiciones is
  begin
    null;
  end Get_PosicionY;
  function Get_VelocidadX (This : Clase_Movil) return Velocidades is
  begin
    null;
  end Get_VelocidadX;
  function Get_VelocidadY (This : Clase_Movil) return Velocidades is
  begin
    null;
  end Get_VelocidadY;
end Movil_Archivo;
