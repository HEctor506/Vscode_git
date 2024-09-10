
par(X) :- X mod 2 =:= 0. #Predicado que prueba si un numero es par


# "Predicado que prueba si un numero es primo "
primo(X) :-
    X > 1,
    not((between(2, X1, Y), X1 is X - 1, X mod Y =:= 0)).

tiene(juan, bicicleta).
tiene(juan, coche).
tiene(pedro, patineta). 


#OPERADORES ARITMETICOS

#EJEMPLO 1
cuadrado(X,R) :- R is X*X.

#EJEMPLO 2
media(A,B,M) :- M is (A+B)/2. 

#EJEMPLO 3
factorial(0,1).
factorial(N,R):-
        N1 is N-1,
        factorial(N1, R1),
        R is N*R1.

#EJEMPLO 4
% Casos base
fibonacci(0, 1).  % Definimos el primer número Fibonacci como 0 (si seguimos la convención estándar)
fibonacci(1, 1).  % El segundo número Fibonacci es 1

% Caso recursivo
fibonacci(N, R) :-
    N1 is N-1,           % Aseguramos que N es mayor que 1 para aplicar la recursión
    N2 is N-2,     % Calculamos N-1
    fibonacci(N1,R1),     % Calculamos N-2
    fibonacci(N2,R2), % Llamada recursiva para N-1
    R is R1 + R2. % Llamada recursiva para N-2
                    % Calculamos el número Fibonacci sumando los dos anteriores


#EJEMPLO 5
mcd(X,0,X).
mcd(X,Y,M):-
        X1 is X mod Y,
        mcd(Y,X1,M).
