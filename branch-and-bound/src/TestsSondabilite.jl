function TestsSondabilite(noeud, BestProfit)

    TA, TO, TR = false, false, false
    # Test d'admissibilité : vérifié si la capacité restante est négative
    if(noeud.capacite_restante <= 0)
        TA=true
        return TA, TO, TR

    else 
        # Test d'optimalité
        if(noeud.borne_sup <= BestProfit) 
            TO=true
        end
        # Test de résolution 1 : réussit si les variables de décisions sont entières
        if(abs(noeud.borne_sup - noeud.borne_inf) <= 10^-5)
            TR=true
        end 
    end 

    return TA, TO, TR

end