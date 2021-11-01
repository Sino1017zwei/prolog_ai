link(a,b).
link(a,c).
link(b,d).
link(b,e).


path(X,Y):-X==Y.
path(X,Y):-link(X,Y).
path(X,Y):-link(X,Z),path(Z,Y).

