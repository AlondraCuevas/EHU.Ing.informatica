--with lab04_sol; use lab04_sol;
with laboratorio04; use laboratorio04;
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure Lab04_Pruebas is
   Num: Integer;
   modulo, argumento: Float;
   La_Suma, La_Cuenta: Integer;



   H,M,S:Integer;
   s1,S2:Float;
   cambio_dia,V: Boolean;
   La_Estacion : T_Estacion;
  Resultado, Error : Float;
  Jugada: T_Jugada := NAda;

begin
   -------
   -- F --
   -------
   Num := F(x=>0,Pos=>0);
   Put("f(0,0)= "); Put(Num,0); New_Line;
   Num := F(x=>2,Pos=>4);
   Put("f(2,4)= "); Put(Num,0); New_Line;
   --Poner más casos para probar

   ----------------
   -- Nota_Final --
   ----------------
   --Uso S1 para construir las notas y S2 para obtener los resultados
   S1 := 6.0;
   Put("La nota Maxima de 6.0, 8.0 y 7.0 debe ser 8.0 y sale ");
   S2:= Nota_final(S1,S1+2.0,s1+1.0,1); Put(S2,0,3,0); New_Line;
   Put("La nota Media  de 6.0, 7.0 y 8.0 debe ser 7.0 y sale ");
   S2:= Nota_final(S1,S1+1.0,s1+2.0,5); Put(S2,0,3,0); New_Line;
   Put("La tercera nota de 8.0, 7.0 y 6.0 debe ser 6.0 y sale ");
   S2:= Nota_final(S1+2.0,S1+1.0,s1,4); Put(S2,0,3,0); New_Line;
   Put("La nota Menor   de 8.0, 7.0 y 6.0 debe ser 6.0 y sale ");
   S2:= Nota_final(S1+2.0,S1+1.0,s1,2); Put(S2,0,3,0); New_Line;
   Put("La nota intermedia (no la segunda) de 6.0, 8.0 y 7.0 debe ser 7.0 y sale ");
   S2:= Nota_final(S1,S1+2.0,s1+1.0,3); Put(S2,0,3,0); New_Line;

   -------------
   -- A_Polar --
   -------------
   A_Polar(3.0,4.0, modulo,argumento);

   Put("z=(3,4) en polar: |z|="); Put(modulo,2,2,0); Put(" arg="); Put(argumento,2,2,0);New_Line;
   --Poner más casos para probar: uno por cuadrante...

   --------------------
   -- Resultado_ONCE --
   --------------------
   Resultado_ONCE(premiado=>1234,a_comprobar=>1234,premio=>Num);
   Put("El premio para el boleto 1234 cuando el premiado es 1234 son 100K Euros y sale ");Put(Num,7);New_Line;
   Resultado_ONCE(premiado=>1234,a_comprobar=>1235,premio=>Num);
   Put("El premio para el boleto 1235 cuando el premiado es 1234 son   0  Euros y sale ");Put(Num,7);New_Line;
   --Poner más casos para probar

   -----------------
   -- Multiplos_3 --
   -----------------
   Multiplos_3(1,10,La_Cuenta, la_Suma);
   Put("La suma de los "); put(la_cuenta,0); Put(" multiplos de 3 entre 1 y 10 es "); Put(La_Suma,0); New_Line;
   --Poner un caso más de prueba

   ---------------
   -- Factorial --
   ---------------
   Num := Factorial(N=>1);
   Put("1! =  1 y sale "); Put(Num,0); New_Line;
   Num := Factorial(4);
   Put("4! = 24 y sale "); Put(Num,0); New_Line;
    --Poner más casos de prueba

   ---------------------
   -- Decimal_Binario --
   ---------------------

   Decimal_Binario (127,binario=>num);
   Put(" 127 en binario es       111 1111, y sale ");Put(Num,0); Put(".");New_Line;
   Decimal_Binario (128,binario=>num);
   Put("128 en binario es 1011 0110 1101, y sale ");Put(Num,0); Put(".");New_Line;
   --Poner algun caso más de prueba

   -------------------
   -- Pregunta_Test --
   -------------------

   Pregunta_Test(Pregunta =>"De que color es el caballo blanco de Santiago?",
   O1=>"Negro", O2=>"Castanno", O3=>"Alazan",  O4=>"Blanco", Respuesta=>S);
   Put("La respuesta aportada es la numero " & S'img);
   Pregunta_Test(Pregunta =>"Oh gran oraculo, estoy preparado para aprobar PB?",
   O1=>"Si, sin duda", O2=>"Si, creo", O3=>"Quizas, segun como se de el dia",  O4=>"No se yo...", Respuesta=>S);
   Put("La respuesta aportada es la numero " & S'img);

   ----------------------
   -- Segundo_Anterior --
   ----------------------
   H:=10; M:=12; S:=13;
   Segundo_Anterior (H,M,S);
   Put(" El segundo anterior a 10:12:13 es 10:12:12, y sale ");Put(H,0); Put(":");Put(M,0); Put(":");Put(S,0); Put(".");New_Line;
   Segundo_Anterior (H,M,S);
   Put(" El segundo anterior a 06:30:00 es 06:29:59, y sale ");Put(H,0); Put(":");Put(M,0); Put(":");Put(S,0); Put(".");New_Line;
   --Poner algun caso más de prueba

   ----------------------
   -- Dia_Anterior --
   ----------------------
   H:=1; M:=5; S:=2021;
   Dia_Anterior (H,M,S);
   Put(" El dia anterior a 01-MAY-2021 es 30-04-2021, y sale ");Put(H,2); Put("-");Put(M,2); Put("-");Put(S,4); Put(".");New_Line;
   H:=13; M:=5; S:=2021;
   Dia_Anterior (H,M,S);
   Put(" El dia anterior a 13-MAY-2021 es 12- 5-2021, y sale ");Put(H,2); Put("-");Put(M,2); Put("-");Put(S,4); Put(".");New_Line;
   H:=01; M:=1; S:=2020;
   Dia_Anterior (H,M,S);
   Put(" El dia anterior a 1-ENE-2020 es 31-12-2019, y sale ");Put(H,2); Put("-");Put(M,2); Put("-");Put(S,4); Put(".");New_Line;
   --Poner algun caso más de prueba

   ---------------------
   -- Numero perfecto --
   ---------------------
   Put("12 no es perfecto: o si? ");Put(Es_Perfecto(12)'img); New_Line;
   Put("28 si es perfecto: o no? ");Put(Es_Perfecto(28)'img); New_Line;
   --Poner algun caso más de prueba 496 8128

   ----------------
   -- solucionar --
   ----------------
   Solucionar (2.0,5.0,2.0,num,s1,s2);
   Put("f(x)=2x2+5x+2 tiene 2 soluciones: -2 (2.00) y -1/2 (-0.50) y salen ");Put(num,0); Put(" soluciones: ");Put(S1,2,2,0); Put(" y ");Put(S2,2,2,0); Put(".");New_Line;
   --Poner algun caso más de prueba

   -----------------
   -- final_tarea --
   -----------------
--   final_tarea(10,00,00,59,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 10:00:00 y dura 59 segs acaba a las 10:00:59 del mismo dia y sale ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);

   -----------------------
   -- Secuencia_Collatz --
   -----------------------
   Secuencia_Collatz(18,la_cuenta, la_suma);
   Put_Line("Collatz01: comenzando en 18: longitud=21; suma=357");
   Put_Line("Secuencia: 18 9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1");
   Put_line("Longitud:"&la_cuenta'img);
   Put_line("Suma:"&la_suma'img);

   ---------------
   -- Fibonacci --
   ---------------
   Put("Fib(0)= 0 y sale "); Put(Fibonacci(0));New_Line;
   Put("Fib(1)= 1 y sale "); Put(Fibonacci(1));New_Line;
   Put("Fib(2)= 1 y sale "); Put(Fibonacci(2));New_Line;
   Put("Fib(3)= 0 y sale "); Put(Fibonacci(3));New_Line;

   -----------------------
   -- Divisores_propios --
   -----------------------
   Put(" 2 tiene 1 divisor   propio  y sale "); Put(Divisores_propios( 2));New_Line;
   Put("17 tiene 1 divisor   propio  y sale "); Put(Divisores_propios(17));New_Line;
   Put("25 tiene 2 divisores propios y sale "); Put(Divisores_propios(25));New_Line;

   ----------------
   -- Estacion I --
   ----------------
   Put("El 10 de Marzo es INVIERNO  y sale "); Put(Estacion(d=>10,m=>3)); New_Line;
   Put("El 10 de Junio es PRIMAVERA y sale "); Put(Estacion(d=>10,m=>6)); New_Line;
   Put("El 10 de Septiembre es VERANO y sale "); Put(Estacion(d=>10,m=>9)); New_Line;
   Put("El 10 de Diciembre es OTONNO y sale "); Put(Estacion(d=>10,m=>12)); New_Line;

   -----------------
   -- Estacion II --
   -----------------
   LA_Estacion := Estacion(10,3);
   Put("El 10 de Marzo es INVIERNO  y sale "); Put(La_Estacion'img); New_Line;
   La_Estacion := Estacion(10,6);
   Put("El 10 de Junio es PRIMAVERA y sale "); Put(La_Estacion'img); New_Line;
   La_Estacion := Estacion(10,9);
   Put("El 10 de Septiembre es VERANO y sale "); Put(la_Estacion'img); New_Line;
   La_Estacion := Estacion(10,12);
   Put("El 10 de Diciembre es OTONNO y sale "); Put(La_Estacion'img); New_Line;

  -------------------------
  -- Contenido del texto --
  -------------------------
  Put("Copia y pega un texto acabado en punto (.)");New_Line;
  Contenido_Del_Texto (Espacios=>H, Letras=>M, Digitos=>S);
  Put("El texto tiene"&H'Img);
  Put(" espacios,"&M'Img);
  Put_line(" letras y"&S'img&" digitos");


   --------------------
   -- Newton-Raphson --
   --------------------
   Newton_raphson(0.50,0.01,resultado,error);
   Put("La aproximacion partiendo de 0.50 con un margen de error de 0.01 es 0.8654, 0.0020 y sale "); Put(resultado,0,6,0);Put(error,2,6,0);New_Line;

   --------------------
   -- Hay_Vacaciones --
   --------------------
   V := Hay_Vacaciones(Vacaciones=>31, Conservatorio=>16, Universidad=>15);
   Put("31 dias da para 16 con las del conservatorio y 15 con las de la universidad?"); Put(V'IMG);New_Line;

   -----------------
   -- Mayor_Menor --
   -----------------
   Put_Line("Vamos a jugar al juego de Mayor-Menor");
   Juego_Mayor_menor;

   -----------------
   -- Mayor_Menor --
   -----------------
   Put_Line("Vamos a jugar al juego de Mayor-Menor");
  Juego_Mayor_Menor_Dificultad;
   -----------------------
   -- Digito 7 sementos --
   -----------------------
   Put("Los segmentos (a-G) 'TTTTTTT' representan el 8 y sale");
   PUT(Digito_7s(True,True,True,True,True,True,True)); New_Line;
   New_Line;


  Put("Cuatro Ases debería ser un [Poker]: ");
  --Las cartas tienen que estar ordenadas de mayor a menor
  Poker(V1=> K, P1=> Diamantes,
        V2=> K, P2=> Picas,
        V3=> K, P3=> Treboles,
        V4=> K, P4=> Corazones,
    V5=> J, P5=> Picas, Jugada=> Jugada );
    Put(Jugada'img); New_Line;
end Lab04_Pruebas;

