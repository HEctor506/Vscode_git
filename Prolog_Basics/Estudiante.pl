% 3 estudiantes, 3 materias -> creditos
% definir estructura que esten cursando materias
% consultar materias por estudiante
% consultar estudiante por materias
% creditos por estudiante
% a cada estudiante asignar la materia


% Hechos
estudiante(1, 'Juan').
estudiante(2, 'Maria').
estudiante(3, 'Pedro').

materia(1, 'Matematicas', 4).
materia(2, 'Historia', 3).
materia(3, 'Programacion', 5).


% Asignaciones de materias a estudiantes
cursa(1, 1).  % Juan cursa Matemáticas
cursa(1, 2).  % Juan cursa Historia
cursa(2, 1).  % María cursa Matemáticas

% Consultar materias por estudiante
materias_por_estudiante(Nombre, Materia):-
    estudiante(IdEstudiante, Nombre),
    cursa(IdEstudiante, IdMateria),
    materia(IdMateria, Materia, _).


% Consultar estudiantes por materia
estudiantes_por_materia(Materia, Nombre):-
    materia(IdMateria, Materia, _),
    cursa(IdEstudiante, IdMateria),
    estudiante(IdEstudiante, Nombre).


creditos_por_estudiante(Nombre, TotalCreditos):-
    estudiante(IdEstudiante, Nombre),
    findall(Creditos, 
            (cursa(IdEstudiante, IdMateria), 
             materia(IdMateria, _, Creditos)), 
            CreditosLista),
    sumlist(CreditosLista, TotalCreditos).