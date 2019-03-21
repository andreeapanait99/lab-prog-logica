scalarMult(_, [], []).
scalarMult(X, [H | T], R) :- Y is X * H, scalarMult(X, T, R1), append([Y], R1, R).

dot([], [], 0).
dot([H1 | T1], [H2 | T2], R) :- dot(T1, T2, R1), R is H1 * H2 + R1.

max([X], X).
max([H | T], R) :- max(T, R1), (H < R1 -> R = R1; R = H).