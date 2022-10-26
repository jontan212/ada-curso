package IO is

   function Get_NotEmpty_Line
     (ErrorM4essage : String := "Entarda Vacía. Vuelva a Ingresar")
      return String;

   function Try_Get_Integer (Value : out Integer) return Boolean;
   
   function Get_Integer (ErrorMessage: String := "No ingreso un Número. Vuelva a intentar") return Integer;

end IO;
