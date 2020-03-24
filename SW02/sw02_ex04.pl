% Possible pairs of colors
n(yellow, red). n(red, yellow).
n(yellow, green). n(green, yellow).
n(red, green). n(green, red).

colors(LU, NW, OW, SZ, UR, ZG) :-
    UR = yellow,
    SZ = red,
    n(LU, ZG), n(ZG, LU),
    n(LU, SZ), n(SZ, LU),
    n(LU, NW), n(NW, LU),
    n(LU, OW), n(OW, LU),
    n(ZG, SZ), n(SZ, ZG),
    n(SZ, UR), n(UR, SZ),
    n(SZ, NW), n(NW, SZ),
    n(NW, OW), n(OW, NW),
    n(NW, UR), n(UR, NW),
    n(UR, OW), n(OW, UR).
