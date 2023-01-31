mutable struct Noeud
    numero::Int
    capacite_restante::Int
    borne_sup::Float64
    borne_inf::Float64
end

# option : choix du calcul de la borne
#          option == 1 -> Borne 1
#          option == 2 -> Borne 2
function main(afficher,filename,option)

    ## INITIALISATION DU PROBLEME
    prix, poids, capacite_initiale = readKnaptxtInstance(filename)
    nb_var = length(prix)

    #create the structure to memorize the search tree for visualization at the end
    trParentnodes=Int64[] #will store orig node of arc in search tree
    trChildnodes=Int64[] #will store destination node of arc in search tree
    trNamenodes=[] #will store names of nodes in search tree

    #intermediate structure to navigate in the search tree
    listobjs=[]
    listvals=[]
    listnodes=[]

    ratio = prix./poids
    BestProfit=-1
    BestSol=zeros(nb_var)

    current_node_number=0
    stop = false

    ## BOUCLE PRINCIPALE
    while(!stop)

        if afficher
            println("\n******\n\nNode number ", current_node_number, " : \n---------------")
        end

        ## Mise à jour de l'affichage graphique de l'arbre
        MAJ_Graphique(current_node_number, listnodes, trNamenodes, trParentnodes, trChildnodes)

        ## ETAPE 1 : Calcul des bornes
        borne_inf, borne_sup, capacite_restante = CalculBorne(listobjs, listvals, capacite_initiale, prix, poids, option)

        ## ETAPE 2  Construction du noeud 
        noeud = Noeud(current_node_number,capacite_restante,borne_sup,borne_inf)
        push!(listnodes, noeud)

        ## ETAPE 3 : Réaliser les tests de sondabilités
        TA, TO, TR = TestsSondabilite(noeud, BestProfit)
        noeud_sondable = TA || TO || TR        

        ## ETAPE 4 : Mise à jour éventuelle d'une solution réalisable (ou optimale)
        BestProfit, BestSol = MAJ_Solution!(noeud, listobjs, listvals, BestProfit, BestSol, TO,TA)

        if afficher
            AffichageResultats(BestProfit,BestSol,capacite_restante,borne_sup,borne_inf,TA,TO,TR)
        end
        
        ## ETAPE 5 : Séparation ou Exploration selon la sondabilité
        if(!noeud_sondable)
            SeparerNoeud!(listobjs, listvals, nb_var,ratio)
        else
            stop = ExplorerAutreNoeud!(listobjs, listvals, listnodes)
        end

        ## ETAPE 6 : Répéter la boucle si on n'a pas fini de construire l'arbre
        current_node_number = current_node_number + 1
    end

    if afficher
        println("\n****** DONNEES : ", filename,"\nf_max = ", BestProfit, "\nx_max = ", BestSol,
                "\nNb_noeuds = ", length(trNamenodes))
    end

    return BestProfit, BestSol, trParentnodes, trChildnodes, trNamenodes

end 