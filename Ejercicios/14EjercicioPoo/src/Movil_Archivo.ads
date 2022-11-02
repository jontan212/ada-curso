package Movil_Archivo is
  type Posiciones is new Integer;
  type Velocidades is new Integer;

  type Clase_Movil is tagged private;
  type Clase_Movil is tagged record
    PosicionX  : Posiciones;
    PosicionY  : Posiciones;
    VelocidadX : Velocidades;
    VelocidadY : Velocidades;
  end record;

  type Movil is access Clase_Movil;

  function Create
   (VelocidadX : Velocidades; VelocidadY : Velocidades) return Movil;

  function Get_PosicionX (This : Clase_Movil) return Posiciones;
  function Get_PosicionY (This : Clase_Movil) return Posiciones;
  function Get_VelocidadX (This : Clase_Movil) return Velocidades;
  function Get_VelocidadY (This : Clase_Movil) return Velocidades;


  function To_String (This : Clase_Movil) return String;
end Movil_Archivo;
