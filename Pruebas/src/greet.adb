with Ada.Text_IO; use Ada.Text_IO;
procedure Greet is
   type My_Int is range 0 .. 1_000;
   type Index is range 1 .. 5;

   type My_Int_Array is array (Index) of My_Int;
   --                                    ^ Tipo de elementos
   --                          ^ Límites de la matriz
   Arr : My_Int_Array := (2, 3, 5, 7, 11);
   --                     ^ Array literal
   --                       (aggregate)

   V : My_Int;
begin
   for I in Index loop
      V := Arr (I);
      --        ^ Toma el elemento I
      --  Put (My_Int'Image (V));
      Put (Arr (I)'Image);
   end loop;
   New_Line;
end Greet;
