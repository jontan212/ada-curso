package Fisica is
   
   type Distancia is new Float;
   type Velocidad is new Float;
   type Tiempo is new Float;
   type Acelerar is new Float;

   function Posicion_Final
     (Posicion_Inicial    : Distancia; Velocidad_Inicial : Velocidad;
      Tiempo_Transcurrido : Tiempo; Acelerar : Aceleracion) return Distancia;

end Fisica;
