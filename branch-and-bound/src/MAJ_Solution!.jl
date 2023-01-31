mutable struct Noeud
    numero::Int
    capacite_restante::Int
    borne_sup::Float64
    borne_inf::Float64
end

"""
Fonction pour mettre à jour éventuellement une solution réalisable (ou optimale)
"""
function MAJ_Solution!(
    noeud::Noeud, listobjs::Vector, listvals::Vector, BestProfit,
    BestSol::Vector, TO::Bool, TA::Bool)
    # Si le TO ou TA est vérifié, alors on ne met pas à jour la meilleure solution
    if (TO || TA)
        
    # Si TO n'est pas vérifié, on regarde si on peut mettre à jour la solution
    # On a trouvé une meilleure solution réalisable 
    elseif (noeud.borne_inf  >= BestProfit)
        # On met à jour le maximum des bénéfices 
        BestProfit = noeud.borne_inf 
        k = 1
        BestSol = zeros(length(BestSol))

        # On met à jour la solution x_sol
        for indice in listobjs 
            BestSol[indice] = listvals[k]
            k += 1
        end
    end
    
    return BestProfit, BestSol
end