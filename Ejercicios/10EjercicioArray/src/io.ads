package IO is

   function Get_NotEmpty_Line
     (ErrorM4essage : String := "Entarda Vac�a. Vuelva a Ingresar")
      return String;

   function Try_Get_Integer (Value : out Integer) return Boolean;
   
   function Get_Integer (ErrorMessage: String := "No ingreso un N�mero. Vuelva a intentar") return Integer;

end IO;
