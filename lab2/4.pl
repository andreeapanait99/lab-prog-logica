all_a([]).
all_a([a | Tail]) :- all_a(Tail).

trans_a_b([], []).
trans_a_b([a | TA], [b | TB]) :- trans_a_b(TA, TB).
