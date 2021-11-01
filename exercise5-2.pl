parent(namihei,katsuo).
parent(namihei,wakame).
parent(namihei,sazae).
parent(hune,katsuo).
parent(hune,wakame).
parent(hune,sazae).
parent(sazae,tarao).
parent(masuo,tarao).

male(namihei).
male(katsuo).
male(masuo).
male(tarao).
female(hune).
female(wakene).
female(sazae).

father(X,Y):-parent(X,Y),male(X).
mother(X,Y):-parent(X,Y),female(X).
grandparent(X,Y):-parent(X,Z),parent(Z,Y).
