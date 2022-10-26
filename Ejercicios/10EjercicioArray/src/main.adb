with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
procedure Main is
  type Persona is record
    Nombre:Unbounded_String;
    Apellido:Unbounded_String;
    Edad: Integer range 1..120;
  end record;

  type Array_Personas is array(Positive range <>) of Persona;

procedure Crear_Personas (N:Integer) is
  Una_Persona: Persona;
  Conjunto_Personas:Array_Personas (1..N);
begin
  for I in Conjunto_Personas'Range loop
    Una_Persona.Nombre:=To_String( Get_Line);
    Una_Persona.Apellido:= To_String( Get_Line);
    Una_Persona.Edad:= Integer'Value( Get_Line);

    Conjunto_Personas(i):=Una_Persona;
      end loop;
end Crear_Personas;
begin
  
  Put_Line("¿Cuántas personas vas a ingresar?");
  Crear_Personas(Integer'Value(Get_Line));
end Main;