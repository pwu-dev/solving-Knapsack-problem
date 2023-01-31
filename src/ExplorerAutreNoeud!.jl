"""
Fonction pour explorer un autre noeud lorsque le noeud actuel est sondable
Précondition : le noeud actuel est sondable
Renvoie : 
    - True : Si on explore à partir d'un noeud racine sondable
             OU Si l'algo a fini de construire l'arbre
    - False : Si l'algo a crée un noeud fils droit 

-----------------------------------------------------------------------------
ALGORITHME : 

Si OnEstPasSurNoeudRacine Alors
    OnRetourneAuNoeudParent
        
    TantQue OnEstRemonteParFilsDroit && OnEstSurNoeudPasRacine
        OnRemonte
    FinTantQue

    Si OnEstRemonteParNoeudFilsGauche Alors 
        OnCreeLeNoeudFilsDroit
        False
    Sinon  (On se situe sur le noeud racine => on a fini de construire l'arbre)
        True
Sinon 
    True
-----------------------------------------------------------------------------
"""

function ExplorerAutreNoeud!(listobjs, listvals, listnodes)
    #this node is sondable, go back to parent node then right child if possible
    
    stop=false
    # On se situe sur un noeud qui n'est pas le noeud racine (0)
    if (length(listobjs)>= 1)
        # Retour au noeud parent
        obj=pop!(listobjs)
        theval=pop!(listvals)
        tmp=pop!(listnodes)

        #go to right child if possible, otherwise go back to parent
        # Sur la branche remontée, la valeur de xi = 0, noeud parent != racine
        # Remonte jusqu'au noeud où la branche parent xi = 1 OU noeud racine
        while( (theval==0.0) && (length(listobjs)>= 1))
            obj=pop!(listobjs)
            theval=pop!(listvals)
            tmp=pop!(listnodes)
        end

        # Sur la branche remontée, la valeur de xi = 1 
        if theval==1.0
            # On crée le noeud fils droit avec xi = 0
            push!(listobjs,obj)
            push!(listvals,0.0)
        # On est remonté par que des branches xi = 0 jusqu'au noeud racine
        # = on a fini d'explorer/de construire l'arbre du problème
        else
            #println("\nFINISHED")
            stop=true
        end

    # On se situe sur un noeud qui est sur le noeud racine (0)
    else
        #the root node was sondable
        #println("\nFINISHED")
        stop=true
    end
    return stop 
end