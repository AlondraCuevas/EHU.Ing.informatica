with Laboratorio03; use Laboratorio03;
--with Lab03_sol; use Lab03_sol;
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure Lab03_Pruebas is
   H,M,S:Integer:=Integer'first;
   Segs: Integer:=integer'first;
   Un,De,Ce,Um: Integer := Integer'first;
   Letra1, Letra2: Character :='*';
   Num: Integer :=Integer'first;
   Imc_Total : Float := FLoat'first;
   P1,P2,P3: Integer := -1;
   Es: Boolean:= FAlse;
   Area, Vol:Float := Float'first;
   X,Y: Float:=Float'first;
   Letra: Character:='*';
  Dd,Mm,Aa: Integer:=0;
  L:Boolean:=false;
  a,b,c,d,e,f,g:Boolean := False;
begin
   null;
   --Comenta los casos que no quieras probar
   --Puedes comentar más de uno

   --------
   -- F1 --
   --------
   New_Line(4);
   Put_Line("Probando F1");
   Un := F1(0);
   Put("F1(0)= ");
   Put(Un,0);
   New_Line;
   --Poner más casos para probar F1 y asegurar que funciona: 10, -10, 0...
   delay 2.0;

   --------
   -- F2 --
   --------
   New_Line(4);
   Put_Line("Probando F2");
   Un := F2(0);
   Put("F2(0)= ");
   Put(Un,0);
   New_Line;
   --Poner más casos para probar F1 y asegurar que funciona: 10, -10, 0...
   delay 2.0;

   --------
   -- F3 --
   --------
   New_Line(4);
   Put_Line("Probando F3");
   Un := F3(0);
   Put("F3(0)= ");
   Put(Un,0);
   New_Line;
   --Poner más casos para probar F1 y asegurar que funciona: 10, -10, 0...
   delay 2.0;

   --------
   -- F4 --
   --------
   New_Line(4);
   Put_Line("Probando F4");
   Un := F4(0,0);
   Put("F4(0,0)= ");
   Put(Un,0);
   New_Line;
   --Poner más casos para probar F1 y asegurar que funciona: 10, -10, 0...
   delay 2.0;

   --------
   -- F5 --
   --------
   New_Line(4);
   Put_Line("Probando F5");
   Un := F5(0,0);
   Put("F5(0,0)= ");
   Put(Un,0);
   New_Line;
   --Poner más casos para probar F1 y asegurar que funciona: 10, -10, 0...
   delay 2.0;

   --------
   -- F6 --
   --------
   New_Line(4);
   Put_Line("Probando F6");
   Un := F6(123,0);
   Put("F6(123,0)= ");
   Put(Un,0);
   New_Line;
   --Poner más casos para probar F1 y asegurar que funciona: 10, -10, 0...
   delay 2.0;

   --------
   -- F7 --
   --------
   New_Line(4);
   Put_Line("Probando F7");
   x := F7 (0.00, 1.00);
   Put("F7(0,1)= ");
   Put(X,0,3,0);
   New_Line;
   --Poner más casos para probar Hora y asegurar que funciona: F7(1,0), F7(10,10)...
   delay 2.0;

   ----------------
   -- Porcentaje --
   ----------------
   New_Line(4);
   Put_Line("Probando Porcentaje ");
   P1:= 60; P2:= 30; P3:= 10;
   Porcentaje(P1, P2, P3);
   Put("Porcentaje de 60, 30 10 es ");
   Put(P1,3);
   Put(P2,3);
   Put(P3,3);
   New_Line;
   --Poner más casos para probar porcentaje y asegurar que funciona: 50 50 50 ...
   delay 2.0;

   ---------
   -- IMC --
   ---------
   New_Line(4);
   Put_Line("Probando IMC ");
   imc_total := imc(35.0, 1.0);
   Put("35kg y 1m da un imc = ");
   Put(imc_total,0,3,0); Put(" kg/m^2. ");
   New_Line;
   --Poner más casos para probar imcy asegurar que funciona:
   delay 2.0;

   -----------
   -- Sumar --
   -----------
   New_Line(4);
   Put_Line("Probando Sumar ");
   L := False;
   Sumar('1', '1',Letra,L);
   Put("1+1= "); Put(Letra); New_Line;
   Put("Llevada:"); Put(L'Img);New_Line;
   --Poner más casos para probar Sumar y asegurar que funciona: 8+7, 5+5...
   delay 2.0;

   ------------
   -- Restar --
   ------------
   New_Line(4);
   Put_Line("Probando Restar ");
   Restar('1', '1',Letra,L);
   Put("1-1= "); Put(Letra); New_Line;
   Put("Llevada:"); Put(L'Img);New_Line;
   --Poner más casos para probar Sumar y asegurar que funciona: 8+7, 5+5...
   delay 2.0;

   -------------------------
   -- Areas de triangulos --
   -------------------------
   New_Line(4);
   Put_Line("Probando Areas de triangulos1");
   Area := Area_Triangulo1(base=>6.0, altura=>7.0);
   Put("Base=6 y Altura=7; Area (21)=>"); Put(Area,2,1,0); New_Line;
   delay 2.0;
   New_Line(4);
   Area := Area_Triangulo2(a=>8.0, b=>6.0, c=>10.0);
   Put("a=8, b=6 y c=10; Area (24) =>"); Put(Area,2,2,0); New_Line;
   delay 2.0;
   New_Line(4);
   Area := Area_Triangulo3(a=>150.0, b=>231.0, c=>123.0);
   Put("lado_adyacente1=150, lado_adyacente2=231 y angulo=123; Area (14529.96) =>"); Put(Area,2,2,0); New_Line;
   New_Line(4);
   delay 2.0;
   Area := Area_Triangulo4(a=>6.0, b=>60.0, c=>60.0);
   Put("lado=6, angulos_adyacentes=60 ; Area (15.59) =>"); Put(Area,2,2,0); New_Line;
   New_Line(4);
   delay 2.0;
   Area := Area_Triangulo5(Lado_a=>6.0, angulo_contiguo=>60.0, angulo_no_contiguo=>60.0);
   Put("lado=6, angulo_adyacente=60y angulo_no_adyacente=60; Area (15.59) =>"); Put(Area,2,2,0); New_Line;
   New_Line(4);
   delay 2.0;
   Area := Area_Triangulo6(x1=>1.0, y1=>1.0, x2=>-2.0, y2=>-4.0, x3=>-2.0,y3=>-2.0);
   Put("Vertices: (1,1), (-2,4), (-2,-2); Area (9.00) =>"); Put(Area,2,2,0); New_Line;
   delay 2.0;

   ----------
   -- Hora --
   ----------
   New_Line(4);
   Put_Line("Probando Hora ");
   Hora(60, H,M,S);
   Put("60 segundos son: ");
   Put(H,0); Put(" horas ");
   Put(M,0); Put(" Minutos ");
   Put(S,0); Put(" segundos.");
   New_Line;
   --Poner más casos para probar Hora y asegurar que funciona: 86400,0,60,3600...
   delay 2.0;

   --------------
   -- Segundos --
   --------------
   New_Line(4);
   Put_Line("Probando Segundos ");
   Segs := Segundos(24,0,0);

   Put("24h 0m 0s son "); Put(Segs,0); Put(" segundos");New_Line;
   --Poner más casos para probar Segundos y asegurar que funciona: los mismos que antes valdría
   delay 2.0;

   -------------------
   -- Sumar tiempos --
   -------------------
   New_Line(4);
   Put_Line("Probando Sumar tiempos ");
   Sumar(0,0,0,0,0,0,H,M,S);

   Put("0h 0m 0s + 0h 0m 0s = 0h 0m 0s y sale ");
   Put(H,2); Put("h ");
   Put(M,2); Put("m ");
   Put(s,2); Put("s.");New_Line;

   Sumar(12,6,45,12,59,45,H,M,S);

   Put("12h 6m 45s + 12h 59m 45s = 25h 6m 30s y sale ");
   Put(H,2); Put("h ");
   Put(M,2); Put("m ");
   Put(s,2); Put("s.");New_Line;
   --Poner más casos para probar Sumar
   delay 2.0;

   ----------------------
   -- Entero_a_digitos --
   ----------------------
   New_Line(4);
   Put_Line("Probando Entero_a_digitos");
   Entero_A_Digitos(1234,Un,De,Ce,Um);

   Put("1234 son 4u 3d 2c y 1um, y sale ");
   Put(Un,0); Put("u ");
   Put(De,0); Put("d ");
   Put(Ce,0); Put("c y ");
   Put(UM,0); Put("um.");New_Line;
   --Poner un caso más de prueba
   delay 2.0;

   ----------
   -- Swap --
   ----------
   New_Line(4);
   Put_Line("Probando Swap ");
   Letra1:='A';
   Letra2:='Z';
   Swap(Letra1,Letra2);

   Put_Line("Intercambiar dos variables con 'A' y 'Z' debe dejar 'Z' y 'A' ");
   Put("Intercambiar deja '");Put(Letra1);Put("' y '");Put(Letra2); Put("'.");
   New_Line;
   --Poner más casos de prueba
   delay 2.0;

   -----------
   -- Valor --
   -----------
   New_Line(4);
   Put_Line("Probando Valor ");

   Num := Valor (4,3,2,1);

   Put("4u 3d 2c y 1um es 1234, y sale ");
   Put(Num,0); Put(".");New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   ----------------
   -- Shaw_Basho --
   ----------------
   New_Line(4);
   Put_Line("Probando Shaw_Basho");
   Num := Shaw_Basho(7);

   Put("El polinomio de Shaw_Basho de 7 debe ser 2622 y sale ");
   Put(Num,0); Put(".");New_Line;
   --Poner algun caso más de prueba
   delay 2.0;


   ----------------------
   -- Multiplo_de_diez --
   ----------------------
   New_Line(4);
   Put_Line("Probando Multiplo_de_diez");
   Es := Multiplo_De_10(120);

   Put("120 es multiplo de 10 (True) y sale ");
   Put(Es'img); Put(".");New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   -------------------
   --  Area_Circulo --
   -------------------
   New_Line(4);
   Put_Line("Probando Area_Circulo");
   Area_Circulo(1.0, Area);

   Put("El area de un circulo de radio 1.0 es 3.14 y sale ");
   Put(area,2,2,0); New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   ----------------------
   -- Volumen_Cilindro --
   ----------------------
   New_Line(4);
   Put_Line("Probando Volumen_Cilindro");
   vol := Volumen_Cilindro(1.0, 1.0);

   Put("El volumen de un cilindro de radio 1.0 y altura 1.0 es 3.14 y sale ");
   Put(vol,2,2,0); New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   --------------------
   -- Volumen_esfera --
   --------------------

   New_Line(4);
   Put_Line("Probando Volumen_esfera");
   vol := Volumen_Esfera(1.0);

   Put("El area de una esfera de radio 1.0 es 4.19 y sale ");
   Put(vol,2,2,0); New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   ---------------------------------
   -- Volumen_cilindro_semiesfera --
   ---------------------------------
   New_Line(4);
   Put_Line("Probando Volumen_cilindro_semiesfera");
   Volumen_Cilindro_semiesfera(1.0, 1.0, vol);

   Put("El volumen de un cilindro de radio 1.0 y altura 1.0 ");
   Put("con una semiesfera encima de radio 1.0 es xxx y sale ");
   Put(vol,2,2,0); New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   -----------------
   -- Multiplo_de --
   -----------------
   New_Line(4);
   Put_Line("Probando Multiplo_de ");
   Es := Multiplo_De(120,10);

   Put("120 es multiplo de 10 (True) y sale ");
   Put(Es'img); Put(".");New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   ----------------------
   -- A_Trigonometrica --
   ----------------------
   New_Line(4);
   Put_Line("Probando A_Trigonometrica");
   A_Trigonometrica(5.0,0.6435,x,y); --angulo en radianes, minimo 3 decimales

   Put("Z=(modulo 5.0, argumento 0.64) = (4.0,3.0) y sale ");
   Put('(');Put(x,0,2,0); Put(",");Put(y,0,2,0); Put(").");New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   ---------
   -- "+" --
   ---------
   New_Line(4);
   Put_Line("Probando sumar un entero a un caracter");
   letra := 'A' + 1;

   Put("'A' + 1 debe devolver 'B' y sale ");
   Put("'");Put(letra);Put("'");New_Line;
   --Poner algun caso más de prueba
   delay 2.0;


   -----------------
   -- Es_Bisiesto --
   -----------------
   New_Line(4);
   Put_Line("Probando Es_Bisiesto ");
   Es := Es_Bisiesto(2021);

   Put("2021 no es bisiesto (False) y sale ");
   Put(Es'img); Put(".");New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   ---------
   -- Hoy --
   ---------
   New_Line(4);
   Put_Line("Probando Hoy ");
   Hoy(Dd,Mm,Aa);

   Put("Sabes que dia es hoy? Pues sale ");
   Put(dd,2);Put('-');Put(mm,2);Put('-');Put(aa,4);Put('.'); New_Line;
   delay 2.0;

   ------------------
   -- Cuantos_Dias --
   ------------------
   New_Line(4);
   Put_Line("Probando Cuantos_Dias");

   Num := Cuantos_Dias(31,12,2020,31,1,2021);

   Put("Entre el 31-12-2020 y el  31-01-2021 hay 31 dias y sale ");
   Put(num,0); Put("dias."); New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   ------------------------
   -- Digito_como_entero --
   ------------------------

   New_Line(4);
   Put_Line("Probando Digito_como_entero");
   Num := Digito_como_entero('0');

   Put("El digito '0' es ");
   Put(num,0); New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   ------------------------
   -- Entero_como_Digito --
   ------------------------

   New_Line(4);
   Put_Line("Probando Entero_como_Digito");
   Letra := Entero_como_digito(0);

   Put("El entero 0 es el digito '"&letra&"'");
   New_Line;
   --Poner algun caso más de prueba
   delay 2.0;

   -------------------
   -- Sumar digitos --
   -------------------

   New_Line(4);
   Put_Line("Probando Sumar digitos");
   Suma('5','5',Letra,L);
   Put("El resultado de sumar '5'+'5' (=1'0') es '"&Letra&"' Llevada="&L'Img);
   delay 2.0;

   ---------------------
   -- Codificar Fecha --
   ---------------------


   New_Line(4);
   Put_Line("Probando Codificar Fecha");
   Num := Codificar_fecha(12,4,2023);
   Put("La codificación del 12-ABRIL-2023 es"&Num'img); New_Line;
   delay 2.0;

   -----------------------
   -- Decodificar Fecha --
   -----------------------

   New_Line(4);
   Put_Line("Probando Decodificar Fecha");
   Decodificar_Fecha(12_04_2023,Dd,Mm,Aa);
   Put("La decodificación del 12_04_2023 es"&Dd'img&'-'&Mm'img&'-'&Aa'img); New_Line;
   delay 2.0;

   -----------------------------
   -- Display siete segmentos --
   -----------------------------

   New_Line(4);
   Put_Line("Probando Display 7 segmentos");
   Display_7_Segmentos(0,a,b,c,d,e,f,g);
   Put("En 7 segmentos el 0 es [T-T-T-F-T-T-T] y sale: "&A'img&'-'&B'img&'-'&C'img&'-'&D'img&'-'&E'img&'-'&F'img&'-'&G'img&'.'); New_Line;
   delay 2.0;

end Lab03_Pruebas;

