
% asiganacion y comparacion
% X is 2, Y is 3, X = Y. % aqui esta instanciando

% =:= solamente con expresion aritmeticas. Las variables siempre deben estar instanciadas

max(X,Y,X):-
    X >= Y.

max(X,Y,Y):-
    Y >= X.


reinado('Carlos II', 1665,1700).
reinado('Felipe V', 1700,1724).
reinado('Luis I', 1724,1724).
reinado('Felipe V', 1724,1746).

rige(Persona, N):-
        reinado(Persona, A, B),
        A =< N,
        N =< B.

tiene(juan, coche).
tiene(juan, bici).
has(john, car).
has(john, bike).

horizontal(seg(punto(X,Y),
        punto(X1,Y))).




