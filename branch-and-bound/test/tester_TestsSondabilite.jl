mutable struct Noeud
    numero::Int
    capacite_restante::Int
    borne_sup::Float64
    borne_inf::Float64
end

function tester_TestsSondabilite(numero_noeud::Int)
    # Paramètres de test
    BestProfitInit = -1
    BestProfit0 = 0
    BestProfit1 = 40
    BestProfit5 = 65
    noeud0 = Noeud(0,10,100,0)
    noeud1 = Noeud(1,6,76,40)
    noeud2 = Noeud(2,10,60,0)
    noeud3 = Noeud(3,-1,77,82)
    noeud4 = Noeud(4,6,70,40)
    noeud5 = Noeud(5,1,69,65)
    noeud6 = Noeud(6,6,64,40)
    noeud7 = Noeud(7,-2,77,77)
    noeud8 = Noeud(8,1,65,65)
    println();

    @testset "abc" begin
        # Cas de test noeud 0
        if numero_noeud == 0    
            TA, TO, TR = TestsSondabilite(noeud0, BestProfitInit)
            @test TA == false
            @test TO == false
            @test TR == false
        # Cas de test noeud 1
        elseif numero_noeud == 1
            TA, TO, TR = TestsSondabilite(noeud1, BestProfit0)
            @test TA == false
            @test TO == false
            @test TR == false
        # Cas de test noeud 2
        elseif numero_noeud == 2
            TA, TO, TR = TestsSondabilite(noeud2, BestProfit1)
            @test TA == false
            @test TO == false
            @test TR == false
        # Cas de test noeud 3 - TA réussi
        elseif numero_noeud == 3
            TA, TO, TR = TestsSondabilite(noeud3, BestProfit1)
            @test TA == true
            @test TO == false
            @test TR == false
        # Cas de test noeud 4
        elseif numero_noeud == 4
            TA, TO, TR = TestsSondabilite(noeud4, BestProfit1)
            @test TA == false
            @test TO == false
            @test TR == false
        # Cas de test noeud 5
        elseif numero_noeud == 5
            TA, TO, TR = TestsSondabilite(noeud5, BestProfit1)
            @test TA == false
            @test TO == false
            @test TR == false
        # Cas de test noeud 6
        elseif numero_noeud == 6
            TA, TO, TR = TestsSondabilite(noeud6, BestProfit5)
            @test TA == false
            @test TO == true
            @test TR == false
        # Cas de test noeud 7 - TA réussi
        elseif numero_noeud == 7
            TA, TO, TR = TestsSondabilite(noeud7, BestProfit5)
            @test TA == true
            @test TO == false
            @test TR == false
        # Cas de test noeud 8
        elseif numero_noeud == 8
            TA, TO, TR = TestsSondabilite(noeud8, BestProfit5)
            @test TA == false
            @test TO == true
            @test TR == true
        else 
            println("cas_test non répertorié"); 
        end 
        println("Test d'admissibilité, TA = ", TA);
        println("Test d'optimalité, TO = ", TO);
        println("Test de résolution, TR = ", TR);
    end
end