with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   -- ID tipo n�mero de tarjeta,
   -- incompatible con Integer.
   type Social_Security_Number is new Integer range 0 .. 999_99_9999;
   -- Dado que un SSN es m�ximo de             -----^
   -- 9 d�gitos y no puede ser negativo,
   -- aplicamos una restricci�n de validez.

   SSN : Social_Security_Number := 555_55_5555;
   -- Puedes poner barra baja    -----^
   -- como formato en cualquier n�mero.

   I : Integer;

   -- El valor -1 a continuaci�n causar� un error
   -- en tiempo de ejecuci�n y una advertencia
   -- en tiempo de compilaci�n con GNAT.
   Invalid : Social_Security_Number := -1;
begin
   -- Ilegal, tienen diferentes tipos:
   I := SSN;

   -- Tambi�n es ilegal:
   SSN := I;

   -- OK con la conversi�n expl�cita:
   I := Integer (SSN);

   -- Igualmente OK:
   SSN := Social_Security_Number (I);
end Main;
