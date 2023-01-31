"""
La fonction main résoud le problème de sac à dos 
Paramètres : 
    - filename (String) -> le nom du fichier dans lequel récupérer les données
Renvoie : 
    - f_max (Int) -> la valeur de la solution optimale du problème
    - x_max (Array{Int}) -> la solution optimale du problème 

ALGORITHME : 
    1. Construire le tableau des valeurs maximales en fonction du nombre maximal
       d'objet que l'on peut transporter et de la capacite maximal permise
    2. Ordre de remplissage du tableau : Ligne par ligne, de gauche à droite 
       pour pouvoir exploiter la relation de récurrence définie 
    3. Pour chaque élément du tableau, calculer et stocker la valeur optimale
       et la solution optimale du sous-problème 
    4. Renvoyer la solution optimale du problème = dernière ligne et colonne

"""
function main(filename)
    # Initialisation du problème
    prix, poids, capacite_sac = readKnaptxtInstance(filename)

    # Créer le tableau des valeurs maximales 
    tab_max = creerTabMax(prix,poids,capacite_sac)
    f_max = tab_max[end,end]

    # Trouver la solution optimale du problème
    x_max = trouverSolution(tab_max,poids)

    return f_max, x_max
end 