with Ada.Text_IO; use Ada.Text_IO;

package body Dates is

   procedure Increase_Month (Some_Day : in out Date) is
      -- Reenombrando los componentes
      -- del registro Date
      M : Months renames Some_Day.Month;
      Y : Integer renames Some_Day.Year;

      -- Reenombrando function (para la enumeración
      -- de Meses)
      function Next (M : Months) return Months renames Months'Succ;
   begin
      if M = December then
         M := January;
         Y := Y + 1;
      else
         M := Next (M);
      end if;
   end Increase_Month;

   procedure Display_Month (Some_Day : Date) is
      -- Reenombrando los componentes
      -- del registro Date
      M : Months renames Some_Day.Month;
      Y : Integer renames Some_Day.Year;
   begin
      Put_Line ("Month: " & Months'Image (M) & ", Year:" & Integer'Image (Y));
   end Display_Month;

end Dates;
