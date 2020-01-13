mujer(maria).
mujer(gaby).
mujer(isa).
mujer(leia).
hombre(jose).
hombre(luis).
hombre(jorge).
hombre(daniel).

ama(maria,jose).
ama(jose,maria).

ama(luis,isa).
ama(isa,luis).

ama(gaby,jorge).

ama(leia,daniel).
ama(daniel,leia).

mayoredad(maria).
mayoredad(gaby).
mayoredad(isa).
mayoredad(luis).
mayoredad(daniel).
mayoredad(jorge).


sepuedencasar(X,Y):-
    (   mujer(X),hombre(Y),
        ama(X,Y),ama(Y,X),
        mayoredad(X),mayoredad(Y));
    (   mujer(Y),hombre(X),
        ama(X,Y),ama(Y,X),
        mayoredad(X),mayoredad(Y)).


sepuedencasar(X):-
    (   mujer(X),hombre(Y),
        ama(X,Y),ama(Y,X),
        mayoredad(X),mayoredad(Y),
        write(Y));
    (   mujer(Y),hombre(X),
        ama(X,Y),ama(Y,X),
        mayoredad(X),mayoredad(Y),
        write(Y)).
