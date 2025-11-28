ecrire([]). % Cas de base : si la liste est vide, on ne fait rien.

ecrire([Ligne | Reste]) :- % On sépare la première ligne du reste.

    write(Ligne), % On affiche la ligne
    nl, % On passe à la ligne suivante
    ecrire(Reste). % On repète le processus pour le reste de la matrice
