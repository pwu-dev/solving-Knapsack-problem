"""
Fonction qui crée le tableau des valeurs maximale des objets que l'on peut
transporter en fonction du poids maximal permis et les objets que l'on peut
inclure.
Paramètres :
    - prix -> le prix des objets 
    - poids -> le poids des objets
    - capacite_max -> la capacité max du sac à dos
Retourne : 
    - tab_max -> Le tableau des valeurs maximale selon la relation de récurrence définie
"""
function creerTabMax(prix,poids,capacite_sac)
    nb_obj = length(prix)
    # capacite allant de 0 à capacite_sac et nb_obj peut être nul
    tab_max = zeros(nb_obj+1,capacite_sac+1)
    # Parcours par ligne, de gauche à droite
    # Pas de parcours sur la 1ère colonne et 1ère ligne car = 0
    for indice_max in 1:nb_obj
        for capacite_max in 1:capacite_sac
            # Accès indice du tableau en décalage avec les valeurs des lignes et colonnes
            # Le tableau démarre à l'indice 1 et nos valeurs démarrent à 0
            i = indice_max + 1
            j = capacite_max + 1
            # Valeur maximale si on ne prend pas l'objet d'indice_max
            pas_prendre_objet = tab_max[i-1,j]
            
            w_i = poids[indice_max]
            # Valeur maximale si on prend l'objet d'indice_max
            if w_i <= capacite_max
                prendre_objet = tab_max[i-1,j-w_i] + prix[indice_max]
            else
                prendre_objet = 0
            end
            # Choix de la valeur maximale, formule de récurrence du cours
            tab_max[i,j] = max(pas_prendre_objet,prendre_objet)
        end
    end
    return tab_max
end