palindrome([]).
palindrome([_]).
palindrome([H | T]) :- append(T1, [H], T), palindrome(T1).