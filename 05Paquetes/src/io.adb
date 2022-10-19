with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings;         use Ada.Strings;
with Ada.Strings.Fixed;   use Ada.Strings.Fixed;

package body IO is

   function Get_NotEmpty_Line
     (ErrorM4essage : String := "Entarda Vacía. Vuelva a Ingresar")
      return String
   is
      use Ada.Text_IO;
   begin
      loop
         declare
            Entrada_Sin_Espacios : String := Get_Line;
         begin
            --Ada.Strings.Fixed.Trim(Entrada);
            Trim (Entrada_Sin_Espacios, Both);
            if ((Entrada_Sin_Espacios'Length > 0)) then
               return Entrada_Sin_Espacios;
            end if;
         end;
         Put_Line (ErrorM4essage);
      end loop;
   end Get_NotEmpty_Line;

   function Try_Get_Integer (Value : out Integer) return Boolean is
   begin
      Value := Integer'Value (Get_Line);
      return True;
   exception
      when others =>
         return False;
   end Try_Get_Integer;

   function Get_Integer
     (ErrorMessage : String := "No ingreso un Número. Vuelva a intentar")
      return Integer
   is
      use Ada.Text_IO;
      Edad : Integer;
   begin
      if (Try_Get_Integer (Edad)) then
         return Edad;
      else
         Put_Line (ErrorMessage);
         return -1;
      end if;
   end Get_Integer;
end IO;
