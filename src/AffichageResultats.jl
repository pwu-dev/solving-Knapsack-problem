function AffichageResultats(BestProfit,BestSol,capacite_restante,borne_sup,borne_inf,TA,TO,TR)
    println("Current optimal value = ", BestProfit, "\nCurrent optimal x = ", BestSol)
    println("Capacité restante : Q = ", capacite_restante)
    println("Borne sup = ", borne_sup)
    println("Borne inf = ", borne_inf)
    println("Test d'admissibilité : TA = ", TA)
    println("Test d'optimalité : TO = ", TO)
    println("Test de résolution : TR = ", TR)
end 