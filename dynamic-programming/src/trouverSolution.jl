"""
Fonction qui trouve la solution du problème d'optimisation à partir de son 
tableau des valeurs maximales
Paramètres :
    - tab_max ->
Retourne :
    - x_max -> la solution du problème d'optimisation
"""
function trouverSolution(tab_max,poids)
    # Initialisation 
    nb_obj = size(tab_max,1)-1
    x_max = zeros(1,nb_obj)
    # Indices de départ à partir de la dernière colonne/ligne
    j = size(tab_max,2)
    indice = 2:(nb_obj+1)
    indice_decroissant = reverse(indice)
    for i in indice_decroissant
        i_obj = i-1
        if tab_max[i,j] == tab_max[i-1,j]
            #x_max[i_obj] = 0
        else
            x_max[i_obj] = 1
            j -= poids[i_obj] 
        end
    end
    return x_max
end