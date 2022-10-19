with Ada.Text_IO; use Ada.Text_IO;
procedure custom_floating_types is
   type T3 is digits 3;
   type T15 is digits 15;
   type T18 is digits 18;
begin
   Put_Line ("T3 requiere " & Integer'Image (T3'Size) & " bits");
   Put_Line ("T15 requiere " & Integer'Image (T15'Size) & " bits");
   Put_Line ("T18 requiere " & Integer'Image (T18'Size) & " bits");
end custom_floating_types;
