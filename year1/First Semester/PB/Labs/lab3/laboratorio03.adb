--with Ada.Text_IO; use Ada.Text_IO;
--with Ada.Numerics; use Ada.Numerics;
package body Laboratorio03 is
   -- Autor(a): Cuevas Bejarano, Alondra

   -- No borres ningún programa (aun cuando no lo implementes)
   -- si no, el compilador avisara de que hay programas sin implmentar
   -- y no podran funcionar las pruebas.

   --------
   -- f1 --
   --------

   function f1 (X: in Integer) return Integer is (Integer'First);

   --------
   -- f2 --
   --------

   function f2 (A: in Integer) return Integer is (Integer'First);

   --------
   -- f3 --
   --------

   function F3 (C: in Integer) return Integer is (Integer'First);

   --------
   -- f4 --
   --------

   function f4 (P,Q: in Integer) return Integer is (Integer'First);

   --------
   -- f5 --
   --------

   function f5 (A,B: in Integer) return Integer is (Integer'First);

   --------
   -- f6 --
   --------

   function f6 (P,Q: in Integer) return Integer is (Integer'First);

   --------
   -- f7 --
   --------

      FUNCTION F7 (X,Y: IN Float) RETURN Float IS
          BEGIN
         return(2.0*X-Y+3.0)/(x**2+2.0*Y);
      END F7;

   ----------------
   -- Porcentaje --
   ----------------

          PROCEDURE Porcentaje(A,B,C: IN OUT Integer) IS
         P1,P2,P3: Integer;
      BEGIN
         P1:= A*100/(A+B+C);
         P2:= B*100/(A+B+C);
         P3:= C*100/(A+B+C);
         A:=P1;
         B:=P2;
         C:=P3;
      END;

   ---------
   -- IMC --
   ---------

   function Imc(Peso_Kg,Altura_M: in Float) return Float is (Float'last);


   -------------------
   -- Sumar digitos --
   -------------------
   procedure Sumar(D1,D2: in Character; Resultado: out Character; Llevada: in out Boolean) is null;

   -------------------
   -- Restar digitos --
   -------------------
   procedure Restar(D1,D2: in Character; Resultado: out Character; Llevada:in out Boolean) is null;

   ------------
   -- Area 1 --
   ------------

      FUNCTION Area_Triangulo1 (Base,Altura: IN Float) RETURN Float IS
         BEGIN
         return Base*Altura/2.0;
      END Area_Triangulo1;

   ------------
   -- Area 2 --
   ------------

   function Area_triangulo2 (A,B,C: in Float) return Float is (Float'First);

   ------------
   -- Area 3 --
   ------------

   function Area_triangulo3 (A,B,C: in Float) return Float is  (Float'First);

   ------------
   -- Area 4 --
   ------------

   function Area_triangulo4 (A,B,C: in Float) return Float is (Float'First);

   ------------
   -- Area 5 --
   ------------

      FUNCTION Area_Triangulo5 (Lado_A,Angulo_Contiguo,Angulo_No_Contiguo: IN Float) RETURN Float IS
         Angulo_Faltante : Float := 180.0 - angulo_Contiguo - Angulo_No_Contiguo;
      BEGIN
         RETURN (Lado_A ** 2 * angulo_contiguo * Angulo_faltante)/ (2.0 * Angulo_No_contiguo);
      END Area_Triangulo5;

   ------------
   -- Area 6 --
   ------------

  function Area_triangulo6 (X1,Y1,X2,Y2,X3,Y3: in Float) return Float is  (Float'First);

   ----------
   -- hora --
   ----------

   procedure Hora (Segundos: in Natural; Hh,Mm,Ss: out Natural) is null;

   --------------
   -- segundos --
   --------------

      FUNCTION Segundos (Hh,Mm,Ss: IN Natural) RETURN Natural IS
      BEGIN
         return Hh*3600+Mm*60+Ss;
      END Segundos;

   -----------
   -- sumar --
   -----------

   procedure Sumar (Hh1,Mm1,Ss1,Hh2,Mm2,Ss2: in Natural; Hh,Mm,Ss: out Natural) is null;

   ----------------------
   -- entero_a_digitos --
   ----------------------

   procedure entero_a_digitos (num: in Natural; unidades, decenas, centenas, u_millar: out Natural) is null;

   ----------
   -- swap --
   ----------
      PROCEDURE Swap (C1, C2: IN OUT Character) IS Save:  Character;
      BEGIN
         Save:= C1;
         C1:= C2;
         C2:= Save;
      END Swap;

   -----------
   -- valor --
   -----------

   function Valor(Unidades, Decenas, Centenas, U_Millar: in Natural) return Integer is (Integer'First);

   ----------------
   -- Shaw_Basho --
   ----------------

      FUNCTION Shaw_Basho (X: IN Natural) RETURN Integer IS
          BEGIN
         return 1/120*(42*X**5-305*X**4+1100*X**3-895*X**2+1018*x+480);
      END Shaw_Basho;

   --------------------
   -- multiplo_de_10 --
   --------------------

   function Multiplo_De_10 (X: in Positive) return Boolean is (Boolean'Last);

   ------------------
   -- area_circulo --
   ------------------

   procedure area_circulo (r: in Float; area: out Float) is null;

   ----------------------
   -- volumen_cilindro --
   ----------------------

   function Volumen_Cilindro (R: in Float; H: in Float) return Float is (Float'Last);

   --------------------
   -- volumen_esfera --
   --------------------

   function Volumen_Esfera (R: in Float) return Float is (Float'Last);

   ---------------------------------
   -- volumen_cilindro_semiesfera --
   ---------------------------------

   procedure volumen_cilindro_semiesfera(r, h: in Float; volumen: out Float) is null;

   -----------------
   -- multiplo_de --
   -----------------

   function Multiplo_De (X,N: in Integer) return Boolean is (Boolean'Last);

   ----------------------
   -- a_trigonometrica --
   ----------------------

   procedure a_trigonometrica(modulo_polar, argumento_polar: in Float; a,b: out Float) is null;

   ---------
   -- "+" --
   ---------

   function "+" (C: in Character; N: in Integer) return Character is ('@');

   -----------------
   -- es_bisiesto --
   -----------------
      FUNCTION Es_Bisiesto (Anno: IN Positive) RETURN Boolean IS
      BEGIN
         RETURN Anno rem 4=0 OR Anno rem 400=0;
      END Es_Bisiesto;

   ---------
   -- hoy --
   ---------

   procedure hoy (dd,mm,aa: out Positive) is null;

   ----------------------
   -- cuantos_dias --
   ----------------------

   function cuantos_dias(d1,m1,a1: in Positive; d2,m2,a2: in Positive) return Natural is (0);

   ------------------------
   -- digito_como_entero --
   ------------------------

      FUNCTION Digito_Como_Entero(D: IN Character) RETURN Natural IS
      BEGIN
         RETURN Natural'Value(D'Image);
      END Digito_Como_Entero;

   ------------------------
   -- entero_como_digito --
   ------------------------

   function entero_Como_Digito(d: in Natural) return Character is ('@');

   -----------
   -- sumar --
   -----------

   procedure Suma (D1,D2: in Character; Resultado: out Character; Llevada: out Boolean) is null;

  ---------------------
  -- Codificar Fecha --
  ---------------------
   function Codificar_Fecha(D,M,A: in Positive) return Positive is (Positive'Last);

   procedure Decodificar_Fecha(F: in Positive; D,M,A: out Positive) is null;
   procedure Display_7_segmentos(N: in Natural; a,b,c,d,e,f,g: out Boolean) is null;
end Laboratorio03;
