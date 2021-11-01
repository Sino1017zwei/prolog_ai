word('c', 'a', 't').
word('d', 'o', 'g').
word('c', 'u', 't').          

solution(L1, L2, L3, L4, L5) :- 
    word(L1, L2, L3), word(L1, L4, L5),
    word(L1, L2, L3) \= word(L1, L4, L5).

% solution(L1, L2, L3, L4, L5).コメントアウト