[[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]

%recursively repeats itself until the user forcefully shuts the program down
gameOfLife(X, Y):-
    nextInTable(X, Y, 0).
gameOfLife(X, Y):-
    gameOfLife(X, Y1),
    gameOfLife(Y1, Y).

%generates a new table row by row
nextInTable(_, [], 25):-!.
nextInTable(X, [[G1|R1]|R], J):-
    nextInRow(X, 0, J, [G1|R1]),
    J1 is J + 1,
    nextInTable(X, R, J1).

%for each element in a row, determines whether it is alive or dead (in the updated table)
nextInRow(_, 25, _, []):-!.
nextInRow(X, I, J, [G1|R1]):-
    isAlive(X, I, J, G1),
    I1 is I + 1,
    nextInRow(X, I1, J, R1).

%decides whether the element is alive, based on the number of living neighbours and its own state
isAlive(X, I, J, P):-
    I1 is I - 1,
    I2 is I + 1,
    J1 is J - 1,
    J2 is J + 1,
    isAliveDirection(X, I1, J1, P1),
    isAliveDirection(X, I, J1, P2),
    isAliveDirection(X, I2, J1, P3),
    isAliveDirection(X, I1, J, P4),
    isAliveDirection(X, I2, J, P5),
    isAliveDirection(X, I1, J2, P6),
    isAliveDirection(X, I, J2, P7),
    isAliveDirection(X, I2, J2, P8),
    F is P1 + P2 + P3 + P4 + P5 + P6 + P7 + P8,
    findASquare(X, F1, I, J),
    isItAlive(P, F, F1).

%returns whether the neighbour is dead or alive
isAliveDirection(X, I, J, P):-
    I >= 0,
    I =< 24,
    J >= 0,
    J =< 24, !,
    findASquare(X, P, I, J).
isAliveDirection(_, _, _, 0).
 
%rules for Conway's "Game of Life"
isItAlive(1, 3, 0):-!.
isItAlive(0, _, 0).
isItAlive(1, F, 1):-
    F >= 2,
    F =< 3, !.
isItAlive(0, _, 1).

%returns the state of the element at specific coordinates of the original table
findASquare([G|_], A, I, 0):-!,
    findASquareX(G, A, I).
findASquare([_|R], A, I, J):-
    J1 is J - 1,
    findASquare(R, A, I, J1).
findASquareX([G|_], A, 0):-!,
    G = A.
findASquareX([_|R], A, I):-
    I1 is I - 1,
    findASquareX(R, A, I1).
