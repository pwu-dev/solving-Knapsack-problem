"""
Fonction pour créer le noeud fils gauche d'un noeud non-sondable 
Précondition : Le noeud est non-sondable 
"""
function SeparerNoeud!(listobjs, listvals, nb_var,ratio)

    ratio_dispo = zeros(nb_var);

    # Vérification des variables de décisions déjà fixées 
    for indice in 1:nb_var
        # Si la variable xi n'est pas encore fixée alors elle est disponible
        if(!(indice in listobjs))
            ratio_dispo[indice] = ratio[indice]
        end
    end

    ratio_max, indice_max = findmax(ratio_dispo)
    
    # Création du noeud fils gauche avec xi = 1
    push!(listobjs,indice_max)
    push!(listvals,1.0) 
end