mult(_, 0, 0).
mult(0, _, 0).
mult(X, Y, Z) :-
    Y > 0,
    Y1 is Y-1,
    mult(X, Y1, Z1),
    Z is X + Z1.
