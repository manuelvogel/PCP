female(mary). female(liz). female(mia). female(tina). female(ann). female(sue).
male(mike). male(jack). male(fred). male(tom). male(joe). male(jim).
parent(mary, mia). parent(mary, fred). parent(mary, tina).
parent(mike, mia). parent(mike, fred). parent(mike, tina).
parent(liz, tom). parent(liz, joe).
parent(jack, tom). parent(jack, joe).
parent(mia, ann).
parent(tina, sue). parent(tina, jim).
parent(tom, sue). parent(tom, jim).

mother(X, Y) :-
    parent(X, Y),
    female(X).

father(X, Y) :-
    parent(X, Y),
    male(X).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y).

grandmother(X, Y) :-
    female(X),
    parent(X, Z),
    parent(Z, Y).

offspring(X, Y) :-
    parent(Y, X).

offspring(X, Y) :-
    parent(Y, Z),
    offspring(X, Z).
