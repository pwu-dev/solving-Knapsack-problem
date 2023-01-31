
function tester_CalculBorne(numero_noeud::Int)
    # Données du test
    vide = []
    option = 1
    prix, poids, capacite_initiale = readKnaptxtInstance("../instancesETU/KNAPnewformat/test.opb.txt")
    println();

    @testset "abc" begin
        # Cas de test noeud 0
        if numero_noeud == 0    
        BI, BS, C = CalculBorne(vide, vide, capacite_initiale, prix, poids, option)
        @test BI == 0
        @test BS == 100
        @test C == 10
        # Cas de test noeud 1
        elseif numero_noeud == 1
        BI, BS, C = CalculBorne([2], [1], capacite_initiale, prix, poids, option)
        @test BI == 40
        @test BS == 76
        @test C == 6
        # Cas de test noeud 2
        elseif numero_noeud == 2
        BI, BS, C = CalculBorne([2], [0], capacite_initiale, prix, poids, option)
        @test BI == 0
        @test BS == 60
        @test C == 10
        # Cas de test noeud 3 - TA réussi
        elseif numero_noeud == 3
            BI, BS, C = CalculBorne([2,1], [1,1], capacite_initiale, prix, poids, option)
            @test C == -1
        # Cas de test noeud 4
        elseif numero_noeud == 4
        BI, BS, C = CalculBorne([2,1], [1,0], capacite_initiale, prix, poids, option)
        @test BI == 40
        @test BS == 70
        @test C == 6
        # Cas de test noeud 5
        elseif numero_noeud == 5
        BI, BS, C = CalculBorne([2,1,4], [1,0,1], capacite_initiale, prix, poids, option)
        @test BI == 65
        @test BS == 69
        @test C == 1
        # Cas de test noeud 6
        elseif numero_noeud == 6
        BI, BS, C = CalculBorne([2,1,4], [1,0,0], capacite_initiale, prix, poids, option)
        @test BI == 40
        @test BS == 64
        @test C == 6
        # Cas de test noeud 7 - TA réussi
        elseif numero_noeud == 7
        BI, BS, C = CalculBorne([2,1,4,3], [1,0,1,1], capacite_initiale, prix, poids, option)
        @test C == -2
        # Cas de test noeud 8
        elseif numero_noeud == 8
        BI, BS, C = CalculBorne([2,1,4,3], [1,0,1,0], capacite_initiale, prix, poids, option)
        @test BI == 65
        @test BS == 65
        @test C == 1
        else 
            println("cas_test non répertorié"); 
        end 
        println("Capacité restante calculée : C = ", C);
        println("Borne supérieure calculée : BS = ", BS);
        println("Borne inférieure calculée : BI = ", BI);
    end

end