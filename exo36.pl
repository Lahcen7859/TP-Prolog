
get_coord(L, E, X, Y) :-

    % On recherche la ligne contenant l’élément E.
    rg(Ligne, RligneHaut, L),   % RligneHaut = numéro de ligne depuis le haut
    rg(E, X, Ligne),            % X = colonne ou se trouve E dans cette ligne

    % Nb lignes total
    length(L, NbLignes),

    % Conversion en numéro de ligne depuis le bas
    Y is NbLignes - RligneHaut + 1.

get_element(L, E, X, Y) :-

    % Nb lignes total
    length(L, NbLignes),

    % Conversion du rang de la ligne depuis le haut
    RligneHaut is NbLignes - Y + 1,

    % On récupère la ligne souhaitee
    rg(Ligne, RligneHaut, L),

    % On récupère l’élément de la colonne X dans cette ligne
    rg(E, X, Ligne).
