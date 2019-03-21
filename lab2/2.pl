fib(0, 1).
fib(1, 1).
fib(X, R) :- X1 is X - 1, X2 is X - 2, fib(X1, R1), fib(X2, R2), R is R1 + R2.

fib2(0, 1).
fib2(1, 1).
fib2(X, R) :- faux(X, R, _).

faux(1, 1, 1).
faux(X, R, R1) :- X1 is X - 1, faux(X1, R1, R2), R is R1 + R2.