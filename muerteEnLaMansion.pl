viveEnLaMansionDreadbury(tiaAgatha).
viveEnLaMansionDreadbury(mayordomo).
viveEnLaMansionDreadbury(charles).

odiaA(tiaAgatha,OtraPersona):-
    viveEnLaMansionDreadbury(OtraPersona),
    OtraPersona \= mayordomo,
    OtraPersona \= tiaAgatha.

odiaA(mayordomo,OtraPersona):- 
    odiaA(tiaAgatha,OtraPersona),
    OtraPersona \= mayordomo.

odiaA(charles,OtraPersona):-
    viveEnLaMansionDreadbury(OtraPersona),
    not(odiaA(tiaAgatha,OtraPersona)),
    OtraPersona \= charles.

esMasRicoQue(UnaPersona,tiaAgatha):-
    viveEnLaMansionDreadbury(UnaPersona),
    not(odiaA(mayordomo,UnaPersona)).
    
mataA(Asesino,Victima):-
    viveEnLaMansionDreadbury(Asesino),
    odiaA(Asesino,Victima),
    not(esMasRicoQue(Asesino,Victima)).

/*
Punto 1:
a. El programa debe resolver el problema de quién mató a la tía Agatha. 
b. Mostrar la consulta utilizada y la respuesta obtenida.

a.  Quien mató a tía Agatha fue Charles.
b.  mataA(Asesino,tiaAgatha).
    Asesino = charles.
*/

/*
Punto 2:
a. Agregar los mínimos hechos y reglas necesarios para poder consultar:
- Si existe alguien que odie a milhouse.
- A quién odia charles.
- El nombre de quien odia a tía Ágatha.
- Todos los odiadores y sus odiados.
- Si es cierto que el mayordomo odia a alguien.
b. Mostrar las consultas utilizadas para conseguir lo anterior, junto con las respuestas obtenidas.

a.  No hace falta agregar nada.
b.  

- Si existe alguien que odie a milhouse.
    odiaA(_,milhouse).
    false.

- A quién odia charles.
    odiaA(charles,Persona).
    Persona = tiaAgatha ;
    Persona = mayordomo ;
    false.

- El nombre de quien odia a tía Ágatha.
    odiaA(Persona,tiaAgatha).
    Persona = charles.  

- Todos los odiadores y sus odiados.
    odiaA(Odiador,Odiado).
    Odiador = tiaAgatha,
    Odiado = charles ;
    Odiador = mayordomo,
    Odiado = charles ;
    Odiador = charles,
    Odiado = tiaAgatha ;
    Odiador = charles,
    Odiado = mayordomo ;
    false.

- Si es cierto que el mayordomo odia a alguien.
    odiaA(mayordomo,_).
    true.
*/
