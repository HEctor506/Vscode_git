%   definicion de los tiempos verbales 

tiempo(presente).
tiempo(pasado).
tiempo(futuro).

% Definicion de las personas gramaticales
persona(primera).
persona(segunda).
persona(tercera).


% Definicion de los numeros gramaticales

numero(singular).
numero(plural).

% Definicion de la conjungacion del verbo to be

ser(presente, primera, singular, "am").
ser(presente, segunda, singular, "are").
ser(presente, tercera, singular, "is").
ser(presente, primera, plural, "are").
ser(presente, segunda, plural, "are").
ser(presente, tercera, plural, "are").

ser(pasado, primera, singular, "was").
ser(pasado, segunda, singular, "were").
ser(pasado, tercera, singular, "was").
ser(pasado, primera, plural, "were").
ser(pasado, segunda, plural, "were").
ser(pasado, tercera, plural, "were").

ser(futuro, primera, singular, "will be").
ser(futuro, segunda, singular, "will be").
ser(futuro, tercera, singular, "will be").
ser(futuro, primera, plural, "will be").
ser(futuro, segunda, plural, "will be").
ser(futuro, tercera, plural, "will be").


% Definicion de la conjungacion del verbo to play

play(presente, primera, singular, "to play").
play(presente, segunda, singular, "to play").
play(presente, tercera, singular, "plays").
play(presente, primera, plural, "play").
play(presente, segunda, plural, "play").
play(presente, tercera, plural, "play").

play(pasado, primera, singular, "played").
play(pasado, segunda, singular, "played").
play(pasado, tercera, singular, "played").
play(pasado, primera, plural, "played").
play(pasado, segunda, plural, "played").
play(pasado, tercera, plural, "played").

play(futuro, primera, singular, "will play").
play(futuro, segunda, singular, "will play").
play(futuro, tercera, singular, "will play").
play(futuro, primera, plural, "will play").
play(futuro, segunda, plural, "will play").
play(futuro, tercera, plural, "will play").

% Definicion de la conjungacion del verbo to eat

eat(presente, primera, singular, "eat").
eat(presente, segunda, singular, "eat").
eat(presente, tercera, singular, "eats").
eat(presente, primera, plural, "eat").
eat(presente, segunda, plural, "eat").
eat(presente, tercera, plural, "eat").

eat(pasado, primera, singular, "ate").
eat(pasado, segunda, singular, "ate").
eat(pasado, tercera, singular, "ate").
eat(pasado, primera, plural, "ate").
eat(pasado, segunda, plural, "ate").
eat(pasado, tercera, plural, "ate").

eat(futuro, primera, singular, "will eat").
eat(futuro, segunda, singular, "will eat").
eat(futuro, tercera, singular, "will eat").
eat(futuro, primera, plural, "will eat").
eat(futuro, segunda, plural, "will eat").
eat(futuro, tercera, plural, "will eat").


% conjungacion del verbo "to be"

conjugar_verbo(Verbo, Tiempo, Persona, Numero, Conjugacion):-
    tiempo(Tiempo),
    persona(Persona),
    numero(Numero),
    (
        Verbo = "to be" ->
        ser(Tiempo, Persona, Numero, Conjugacion);
        
        Verbo = "to play" ->
        play(Tiempo, Persona, Numero, Conjugacion);

        Verbo = "to eat" ->
        eat(Tiempo, Persona, Numero, Conjugacion);
        
        Conjugacion = Verbo
    ).
