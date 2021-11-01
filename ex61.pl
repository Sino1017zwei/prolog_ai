parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).

mother(X, Y) :-parent(X, Y),female(X).
father(X, Y) :-parent(X, Y),male(X).
grandchild(X, Z) :- parent(Z,Y),parent(Y,X).
aunt(X,Y):-parent(Z,Y),sister(X,Z).

sister(X, Y) :-parent(Z, X), parent(Z, Y), female(X),X\=Y.

ancestor(X,Z):-parent(X,Z).
ancestor(X,Z):-parent(X,Y),ancestor(Y,Z).