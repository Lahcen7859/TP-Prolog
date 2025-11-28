% --- Données de base ---
couple([lyceens, etudiants, retraites, actifs]).
destination([espagne, australie, bali, destination_inconnue]).
duree([deuxsemaines, deuxmois, unmois, duree_inconnue]).
budget([petit, moyen, large, confortable]).
% --- Faits correspondant aux contraintes ---
vacances(lyceens, espagne, deuxsemaines, petit).
vacances(etudiants, destination_inconnue, unmois, moyen).
vacances(retraites, australie, deuxmois, large).
vacances(actifs, bali, duree_inconnue, confortable).
% --- Prédicat principal pour afficher les résultats ---

afficher_vacances :-
    writeln('--- Vacances des couples ---'),
    vacances(C, D, T, B),
    format('~w part en ~w pour ~w  avec un budget ~w.~n',[C, D, T, B]),
    fail.
afficher_vacances.


