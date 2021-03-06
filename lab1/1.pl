sits_right_of(cersei, tywin).
sits_right_of(tywin, petyr).
sits_right_of(petyr, varys).
sits_right_of(varys, pycelle).
sits_right_of(pycelle, tyrion).
sits_right_of(tyrion, janos).
sits_right_of(janos, cersei).

sits_left_of(X, Y) :- sits_right_of(Y, X).

are_neighbors_of(X, Y, Z) :- sits_left_of(X, Z), sits_right_of(Y, Z).

next_to_each_other(X, Y) :- sits_left_of(X, Y); sits_right_of(X, Y).

/** <examples>
?- sits_right_of(petyr, cersei).
?- sits_right_of(petyr, varys).
?- sits_right_of(X, janos).
?- sits_right_of(X, cersei), sits_right_of(X, Y).
?- are_neighbors_of(pycelle, petyr, X).
*/