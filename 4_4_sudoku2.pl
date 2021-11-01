:- use_module(library(clpfd)).

sudoku(Rows) :-
        length(Rows, 4), maplist(same_length(Rows), Rows),
        append(Rows, Vs), Vs ins 1..4,
        maplist(all_distinct, Rows),
        transpose(Rows, Columns),
        maplist(all_distinct, Columns),
        Rows = [As,Bs,Cs,Ds],
        blocks(As, Bs),
        blocks(Cs, Ds).

blocks([], []).
blocks([N1,N2|Ns1], [N3,N4|Ns2]) :-
        all_distinct([N1,N2,N3,N4]),
        blocks(Ns1, Ns2).

problem(1, [[_,_,2,3],
            [_,_,_,_],
            [_,_,_,_],
            [3,4,_,_]]).

% problem(1, X), sudoku(X), maplist(portray_clause, X).
