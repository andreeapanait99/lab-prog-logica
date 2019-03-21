writeRow(0, _) :- nl.
writeRow(X, Y) :- write(Y), X1 is X - 1, writeRow(X1, Y).

square(0, _, _) :- nl.
square(X, Y, Z) :- writeRow(Z, Y), X1 is X - 1, square(X1, Y, Z).