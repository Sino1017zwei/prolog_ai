:- use_module(library(clpfd)).

sudoku(Rows) :-
        length(Rows, 6), maplist(same_length(Rows), Rows),
        append(Rows, Vs), Vs ins 1..6,
        maplist(all_distinct, Rows),
        transpose(Rows, Columns),
        maplist(all_distinct, Columns),
        Rows = [As,Bs,Cs,Ds,Es,Fs],
        blocks(As, Bs),
        blocks(Cs, Ds),
   		blocks(Es, Fs).

blocks([], []).
blocks([N1,N2,N3|Ns1], [N4,N5,N6|Ns2]) :-
        all_distinct([N1,N2,N3,N4,N5,N6]),
        blocks(Ns1, Ns2).

problem(1, [[1,6,_,_,_,5],
            [_,_,5,2,_,_],
            [5,_,_,_,3,_],
            [_,4,_,_,_,1],
            [_,_,4,1,_,_],
            [3,_,_,_,5,4]]).

% problem(1, X), sudoku(X), maplist(portray_clause, X).