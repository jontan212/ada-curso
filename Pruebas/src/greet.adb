with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is
   type Days is (Monday, Tuesday, Wednesday,
                 Thursday, Friday,
                 Saturday, Sunday);
   subtype Weekend_Days is
     Days range Saturday .. Sunday;
   --     ^ Restricción del subtipo

   M : Days := Sunday;

   S : Weekend_Days := M;
   -- No hay error aquí, Days y Weekend_Days
   -- son del mismo tipo.
begin
   for I in Days loop
      case I is
         -- Al igual que un tipo, un subtipo puede 
         -- ser utilizado como un range
         when Weekend_Days =>
            Put_Line ("Week end!");
         when others =>
            Put_Line ("Hello on " & Days'Image (I));
      end case;
   end loop;
end Greet;
