with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   -- ID tipo número de tarjeta,
   -- incompatible con Integer.
   type Social_Security_Number is new Integer range 0 .. 999_99_9999;
   -- Dado que un SSN es máximo de             -----^
   -- 9 dígitos y no puede ser negativo,
   -- aplicamos una restricción de validez.

   SSN : Social_Security_Number := 555_55_5555;
   -- Puedes poner barra baja    -----^
   -- como formato en cualquier número.

   I : Integer;

   -- El valor -1 a continuación causará un error
   -- en tiempo de ejecución y una advertencia
   -- en tiempo de compilación con GNAT.
   Invalid : Social_Security_Number := -1;
begin
   -- Ilegal, tienen diferentes tipos:
   I := SSN;

   -- También es ilegal:
   SSN := I;

   -- OK con la conversión explícita:
   I := Integer (SSN);

   -- Igualmente OK:
   SSN := Social_Security_Number (I);
end Main;
