mutable struct Noeud
    numero::Int
    capacite_restante::Int
    borne_sup::Float64
    borne_inf::Float64
end

function tester_MAJ_Solution(numero_noeud::Int)
    # Paramètres de test
    BestProfitInit = -1
    BestProfit0 = 0
    BestProfit1 = 40
    BestProfit5 = 65
    BestSol0 = [0,0,0,0]
    BestSol1 = [0,1,0,0]
    BestSol5 = [0,1,0,1]
    noeud0 = Noeud(0,10,100,0)
    noeud1 = Noeud(1,6,76,40)
    noeud2 = Noeud(2,10,60,0)
    noeud3 = Noeud(3,-1,77,82)
    noeud4 = Noeud(4,6,70,40)
    noeud5 = Noeud(5,1,69,65)
    noeud6 = Noeud(6,6,64,40)
    noeud7 = Noeud(7,-2,77,77)
    noeud8 = Noeud(8,1,65,65)
    # Enumeration des listobjs selon l'itération de xi 
    listobjs0 = []
    listobjs1 = [2]
    listobjs2 = [2,1]
    listobjs3 = [2,1,4]
    listobjs4 = [2,1,4,3]
    listvals0 = []
    listvals1 = [1]
    listvals2 = [0]
    listvals3 = [1,1]
    listvals4 = [1,0]
    listvals5 = [1,0,1]
    listvals6 = [1,0,0]
    listvals7 = [1,0,1,1]
    listvals8 = [1,0,1,0]
    TO = false
    TO6 = true
    TA = false
    TA37 = true
    println();

    @testset "abc" begin
        # Cas de test noeud 0
        if numero_noeud == 0    
            BestProfit, BestSol = MAJ_Solution!(noeud0, listobjs0, listvals0, BestProfitInit, BestSol0, TO, TA)
            @test BestProfit == BestProfit0
            @test BestSol == BestSol0
        # Cas de test noeud 1
        elseif numero_noeud == 1
            BestProfit, BestSol = MAJ_Solution!(noeud1, listobjs1, listvals1, BestProfit0, BestSol0, TO,TA)
            @test BestProfit == BestProfit1
            @test BestSol == BestSol1
        # Cas de test noeud 2
        elseif numero_noeud == 2
            BestProfit, BestSol = MAJ_Solution!(noeud2, listobjs1, listvals2, BestProfit1, BestSol1, TO,TA)
            @test BestProfit == BestProfit1
            @test BestSol == BestSol1
        # Cas de test noeud 3 - TA réussi
        elseif numero_noeud == 3
            BestProfit, BestSol = MAJ_Solution!(noeud3, listobjs2, listvals3, BestProfit1, BestSol1, TO,TA37)
            @test BestProfit == BestProfit1
            @test BestSol == BestSol1
        # Cas de test noeud 4
        elseif numero_noeud == 4
            BestProfit, BestSol = MAJ_Solution!(noeud4, listobjs2, listvals4, BestProfit1, BestSol1, TO,TA)
            @test BestProfit == BestProfit1
            @test BestSol == BestSol1
        # Cas de test noeud 5
        elseif numero_noeud == 5
            BestProfit, BestSol = MAJ_Solution!(noeud5, listobjs3, listvals5, BestProfit1, BestSol1, TO,TA)
            @test BestProfit == BestProfit5
            @test BestSol == BestSol5
        # Cas de test noeud 6
        elseif numero_noeud == 6
            BestProfit, BestSol = MAJ_Solution!(noeud6, listobjs3, listvals6, BestProfit5, BestSol5, TO6,TA)
            @test BestProfit == BestProfit5
            @test BestSol == BestSol5
        # Cas de test noeud 7 - TA réussi
        elseif numero_noeud == 7
            BestProfit, BestSol = MAJ_Solution!(noeud7, listobjs4, listvals7, BestProfit5, BestSol5, TO,TA37)
            @test BestProfit == BestProfit5
            @test BestSol == BestSol5
        # Cas de test noeud 8
        elseif numero_noeud == 8
            BestProfit, BestSol = MAJ_Solution!(noeud8, listobjs4, listvals8, BestProfit5, BestSol5, TO,TA)
            @test BestProfit == BestProfit5
            @test BestSol == BestSol5
        else 
            println("cas_test non répertorié"); 
        end 
        println("Meilleur bénéfice connue, BestProfit = ", BestProfit);
        println("Meilleure solution connue, BestSol = ", BestSol);
    end
end