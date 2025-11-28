%  Données de base
emission([soireefoot, gmymac, vmv, bobobo]).
jour([lundi, mardi, mercredi, jeudi]).
heure([h19, h20, h21, h22]).
chaine([france4, masdagascar4, quebec3, senegal6]).

%  Contraintes connues d'après l'énoncé
% (D'après les infos corrigées du tableau final du TP)
diffusion(soireefoot, mercredi, h19, france4).
diffusion(gmymac, lundi, h21, masdagascar4).
diffusion(vmv, mardi, h20, quebec3).
diffusion(bobobo, jeudi, h22, senegal6).

%  Prédicat d'affichage
afficher_diffusions :-
    writeln('--- Diffusions des émissions ---'),
    diffusion(Titre, Jour, Heure, Chaine),
    format('~w est diffusée le ~w à ~w sur ~w.~n', [Titre, Jour, Heure, Chaine]),
    fail.
afficher_diffusions.
