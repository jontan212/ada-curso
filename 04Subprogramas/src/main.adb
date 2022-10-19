with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
procedure Main is
   procedure MayorMenor (Var1 : Integer; Var2 : Integer) is
      mayor : Unbounded_String;
      menor : Unbounded_String;
   begin
      mayor :=
        (if Var1 > Var2 then Var1'Image & " es mayor"
         else Var2'Image & " es menor");
      menor :=
        (if Var1 > Var2 then Var1'Image & " es mayor"
         else Var2'Image & " es menor");
      Put (mayor & "que" & menor);
   end MayorMenor;
begin
   MayorMenor (5, 4);
end Main;
