placer(X, 1, [_|Queue], [X|Queue]). % Si R = 1, on remplace simplement la tête de la liste.
% Si R > 1 :
placer(X, R, [Tete|Queue], [Tete|NouvelleQueue]) :-
     R > 1,
     R1 is R - 1, % On décrémente le rang
     placer(X, R1, Queue, NouvelleQueue). % On continue récursivement sur la queue
