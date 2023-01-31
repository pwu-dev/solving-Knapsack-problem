function CalculBorne(listobjs, listvals, capacite_initiale, prix, poids, option)

    # Calcul du ratio des objets 
    ratio = prix ./ poids
    # Tri ratio par ordre croissant (pour dépiler dans l'ordre décroissant)
    indice_croissant = sortperm(ratio)
    ratio_croissant = ratio[indice_croissant]
    # Initialisation
    borne_inf = 0
    borne_sup = 0
    capacite_restante = capacite_initiale
    k = 0   # indice de parcours

    # Calcul de la borne inf
    # On recherche les variables de décisions (les indices) déjà fixées 
    for indice in listobjs
        k += 1
        capacite_restante -= listvals[k] * poids[indice]
        borne_inf += listvals[k]*prix[indice]
        # On dépile les variables utilisées/fixées
        pop!(indice_croissant)
        pop!(ratio_croissant)
    end

    # Calcul de la borne sup
    borne_sup = borne_inf
    # Calcul Borne1
    if option == 1 && (capacite_restante > 0)
        if (ratio_croissant == [])
            ratio_max = 0
        else
            ratio_max = pop!(ratio_croissant)
        end     
        borne_sup += capacite_restante * ratio_max

    # Calcul Borne2
    elseif option == 2
        capacite = capacite_restante
        # Tant qu'on a pas rempli le sac OU qu'il n'y plus d'objet à mettre
        while (capacite > 0) && (indice_croissant != [])
            indice_dominant = pop!(indice_croissant)
            ratio_max = pop!(ratio_croissant)
            # On peut mettre l'objet suivant entièrement
            if poids[indice_dominant] <= capacite
                capacite -= poids[indice_dominant]
                borne_sup +=  prix[indice_dominant]
            # Sinon on ajoute une fraction de l'objet
            else
                borne_sup += capacite * ratio_max
                capacite = 0
            end 
        end
    elseif (option != 0) && (option != 1)
        println("ERREUR option");
    end


    return borne_inf, borne_sup, capacite_restante

end