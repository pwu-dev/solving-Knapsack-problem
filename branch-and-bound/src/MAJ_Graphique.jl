mutable struct Noeud
    numero::Int
    capacite_restante::Int
    borne_sup::Float64
    borne_inf::Float64
end

"""
Fonction qui réalise la mise à jour de l'affichage graphique de l'arbre
"""
function MAJ_Graphique(current_node_number, listnodes, trNamenodes, trParentnodes, trChildnodes)
    push!(trNamenodes,current_node_number+1) 
    if(length(trNamenodes)>=2)
        push!(trParentnodes,listnodes[end].numero + 1) # +1 because the 1st node is "node 0"
        push!(trChildnodes, current_node_number+1) # +1 because the 1st node is "node 0"
    end
end 