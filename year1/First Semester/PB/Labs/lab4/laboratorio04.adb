--with Ada.Text_IO; use Ada.Text_IO;
--with Ada.Float_Text_IO; use Ada.Float_Text_IO;
WITH Ada.Numerics.Elementary_Functions;
USE Ada.Numerics.Elementary_Functions;
WITH Ada.Numerics; USE Ada.Numerics;
package body Laboratorio04 is
--Cuevas Bejarano, Alondra
  -------
  -- f --
  -------

  function f (X,Pos: in Natural) return Natural is (Natural'last);

  ----------------
  -- Nota_Final --
  ----------------

        FUNCTION Nota_Final(Nota1, Nota2, Nota3: IN Float; Metodo: IN Positive) RETURN Float IS
        Max_Nota: Float:= Nota1;
           Min_Nota: Float:= Nota1;
     BEGIN
        if Nota1 < 0.0 or Nota1 > 10.0 or Nota2 < 0.0 or Nota2 > 10.0 or Nota3 < 0.0 or Nota3 > 10.0 then
           RETURN -1.0;
        END IF;

            -- nota maxima
            if Nota2 > Max_Nota then
                Max_Nota := Nota2;
            end if;
            if Nota3 > Max_Nota then
                Max_Nota := Nota3;
        END IF;

        -- nota minima
        IF Nota2 < Min_Nota THEN
           Min_Nota :=  Nota2;
        END IF;
        IF Nota3 < Min_Nota THEN
           Min_Nota := Nota3;
        END IF;


        CASE Metodo IS
           WHEN 1=> RETURN Max_nota;
           WHEN 2 => RETURN Min_Nota;
            when 3 => return (Nota1 + Nota2 + Nota3 - Max_nota - Min_nota);
            when 4 => RETURN Nota3;
            when 5 => RETURN (Nota1 + Nota2 + Nota3) / 3.0;
            when 6 => -- Calcular la media geométrica
            if Nota1 > 0.0 and Nota2 > 0.0 and Nota3 > 0.0 then
                return Exp((1.0 / 3.0) * (Log(Nota1) + Log(Nota2) + Log(Nota3)));  -- Raíz cúbica del producto
            else
                return -1.0;  -- Si alguna nota es cero o negativa, no se puede calcular
            end if;
        when others => return -1.0;  -- Código inválido
    end case;
END Nota_Final;
  -------------
  -- a_polar --
  -------------

     PROCEDURE A_Polar (A,B: IN Float; Modulo, Argumento: OUT Float) IS
     BEGIN
        Modulo := Sqrt((A * A) + (B * B));
        IF A>0.0 AND B>0.0 THEN
           Argumento:= (Arctan(B/A));
        ELSIF A>0.0 AND B<0.0 THEN
           Argumento:= (2.0*Pi) + (Arctan(B/A));
        ELSIF A<0.0 then
              Argumento:= Pi + (Arctan(B/A));
        ELSIF A>0.0 AND B=0.0 THEN
              Argumento:= 0.0;
           ELSIF A=0.0 AND B>0.0 then
              Argumento:= Pi/2.0;
           ELSIF A=0.0 AND B<0.0 THEN
              Argumento:= (3.0*Pi)/2.0;
           ELSif A=0.0 AND B=0.0 THEN
           Argumento:= 0.0;
           end if;
   end A_Polar;


  --------------------
  -- resultado_ONCE --
  --------------------

  procedure resultado_ONCE (premiado, a_comprobar: in Natural; premio: out Natural)is null;

  -----------------
  -- Multiplos_3 --
  -----------------

     PROCEDURE Multiplos_3 (N1,N2: IN Natural; Cuenta, Suma: OUT Natural) IS
     BEGIN
        Suma:= 0;
        Cuenta:= 0;

        IF N1 >= N2 THEN
        RETURN;
        END IF;
        for I in N1 .. N2 loop
        if I mod 3 = 0 then
            Suma := Suma + I;
            Cuenta := Cuenta + 1;
        end if;
    end loop;
     END Multiplos_3;

  ---------------
  -- Factorial --
  ---------------

  function Factorial (N: in Positive) return Positive is (Natural'last);

  ---------------------
  -- decimal_binario --
  ---------------------

  procedure decimal_binario (Decimal: in Natural; Binario: out Natural) is null;

  -------------------
  -- Pregunta_Test --
  -------------------

  procedure Pregunta_Test(Pregunta,O1,O2,O3,O4: in String; Respuesta: out Positive) is null;

  ----------------------
  -- segundo_anterior --
  ----------------------

  procedure segundo_anterior (h, m, s: in out Natural) is null;

  ----------------
  -- solucionar --
  ----------------

     PROCEDURE Solucionar(A,B,C: IN Float; Num_Sols: OUT Natural; Sol1, Sol2: OUT Float) IS Discriminante: Float;
  BEGIN
  if A /= 0.0 then
        -- Ecuación cuadrática
        Discriminante := B**2 - 4.0 * A * C;
        if Discriminante > 0.0 then
            -- Dos soluciones reales
            Num_Sols := 2;
            Sol1 := (-B + Sqrt(Discriminante)) / (2.0 * A);
            Sol2 := (-B - Sqrt(Discriminante)) / (2.0 * A);
        elsif Discriminante = 0.0 then
            -- Una solución real
            Num_Sols := 1;
            Sol1 := -B / (2.0 * A);
        else
            -- No hay sols. reales
            Num_Sols := 0;
        end if;
    elsif B /= 0.0 then
        -- Ecuación lineal: Bx + C = 0
        Num_Sols := 1;
        Sol1 := -C / B;
    else
        -- No hay solución cuando A = 0 y B = 0
        Num_Sols := 0;
    end if;
end Solucionar;

  -----------------
  -- final_tarea --
  -----------------

  procedure final_tarea(h,m,s: in Natural;duracion: in Positive; siguiente_jornada: out Boolean; hf,mf,sf: out Natural)
  is null;

  -----------------------
  -- Secuencia_Collatz --
  -----------------------

  procedure Secuencia_Collatz (num: in Positive; cuenta, suma: out Natural) is null;

  ---------------
  -- Fibonacci --
  ---------------

  function Fibonacci (N:in Natural) return Natural is (natural'last);

  -----------------------
  -- Divisores_propios --
  -----------------------

  function Divisores_Propios (N: in Natural) return Natural is (Natural'Last);

  ------------------
  -- Dia_anterior --
  ------------------

  procedure Dia_anterior (d,m,a:in out Natural) is null;
  --------------
  -- Estacion --
  --------------

  function Estacion (d,m: in natural) return STRING is ("SIN IMPLEMENTAR");

  --------------
  -- Estacion --
  --------------

  function Estacion (d,m: in Natural) return T_Estacion is (PRIMAVERA);

  -----------------
  -- Es_Perfecto --
  -----------------

  function Es_Perfecto (N: in Positive) return Boolean is (TRUE);

  -------------------------
  -- Contenido_Del_Texto --
  -------------------------

  procedure Contenido_Del_Texto (Espacios, Letras, Digitos: out Natural) is null;

  --------------------
  -- Newton_Raphson --
  --------------------

  procedure Newton_Raphson(Inicial, Error: in Float;V_Actual, Err_Actual: out Float)is null;

  --------------------
  -- Hay_Vacaciones --
  --------------------

     FUNCTION Hay_Vacaciones(Vacaciones, Conservatorio, Universidad: IN Positive)RETURN Boolean IS
     BEGIN
        return ( Conservatorio + Universidad <= Vacaciones);
     END Hay_vacaciones;

  -----------------
  -- Mayor_Menor --
  -----------------

  procedure Mayor_Menor (Numero_a_adivinar: in Natural) is null;

  -----------------------
  -- Juego_Mayor_Menor --
  -----------------------

  procedure Juego_Mayor_Menor is null;

  -----------------
  -- Mayor_Menor --
  -----------------

     PROCEDURE Mayor_Menor (Numero_A_Adivinar, Intentos_Maximos: IN Natural) IS NULL;


  -----------------------
  -- Juego_Mayor_Menor --
  -----------------------

  procedure Juego_Mayor_Menor (dificultad: in Positive) is null;

  ----------------------------------
  -- Juego_Mayor_Menor_dificultad --
  ----------------------------------

  procedure Juego_Mayor_Menor_Dificultad is null;

  ---------------
  -- Digito_7s --
  ---------------

   function Digito_7s(A,B,C,D,E,F,G: in Boolean) return Integer is (-1);

  -----------
  -- Poker --
  -----------

   procedure Poker (P1,P2,P3,P4,P5: in T_Palo; V1,V2,V3,V4,V5: in T_Valor; Jugada: out T_Jugada) is null;


end Laboratorio04;
