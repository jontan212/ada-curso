with Ada.Text_IO; use Ada.Text_IO;
with Dates;       use Dates;

procedure Main is
   D : Date := (1, January, 2_000);
begin
   Display_Month (D);

   Put_Line ("Incrementando mes...");
   Increase_Month (D);

   Display_Month (D);
end Main;
