with Ada.Text_IO; use Ada.Text_IO;
procedure Enumeration_Example is
   type Days is
     (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
   -- Un tipo de enumeración
begin
   for I in Days loop
      case I is
         when Saturday .. Sunday =>
            Put_Line ("Week end!");

         when Monday .. Friday =>
            Put_Line ("Hello on " & Days'Image (I));
            -- 'Image, también funciona
            -- en enums
      end case;
   end loop;
end Enumeration_Example;
