
function tester_SeparerNoeud(numero_noeud::Int)
    # Données du test
    prix, poids, _ = readKnaptxtInstance("../instancesETU/KNAPnewformat/test.opb.txt")
    ratio = prix./poids
    nb_var = length(ratio)
    # Enumeration de listobjs selon le numero du noeud 
    listobjs0 = []
    listobjs1 = [2]
    listobjs3 = [2,1]
    listobjs4 = [2,1]
    listobjs5 = [2,1,4]
    listobjs7 = [2,1,4,3]
    listvals0 = []
    listvals1 = [1]
    listvals3 = [1,1]
    listvals4 = [1,0]
    listvals5 = [1,0,1]
    listvals7 = [1,0,1,1]
    println();

    @testset "abc" begin
        # Cas de test noeud 0, passage au noeud 1
        if numero_noeud == 0   
            listobjs = listobjs0
            listvals = listvals0
            SeparerNoeud!(listobjs, listvals, nb_var,ratio)
            @test listobjs == listobjs1
            @test listvals == listvals1
        # Cas de test noeud 1, passage au noeud 3
        elseif numero_noeud == 1
            listobjs = listobjs1
            listvals = listvals1
            SeparerNoeud!(listobjs, listvals, nb_var,ratio)
            @test listobjs == listobjs3
            @test listvals == listvals3
        # Cas de test noeud 4, passage au noeud 5
        elseif numero_noeud == 4
            listobjs = listobjs4
            listvals = listvals4
            SeparerNoeud!(listobjs, listvals, nb_var,ratio)
            @test listobjs == listobjs5
            @test listvals == listvals5
        # Cas de test noeud 5, passage au noeud 7
        elseif numero_noeud == 5
            listobjs = listobjs5
            listvals = listvals5
            SeparerNoeud!(listobjs, listvals, nb_var,ratio)
            @test listobjs == listobjs7
            @test listvals == listvals7
        else 
            println("cas_test non répertorié"); 
            listobjs = []
            listvals = []
        end 
        println("Localisation du noeud : numero_noeud = ", numero_noeud);
        println("La liste des variables de décisions fixées : listobjs = ", listobjs);
        println("Avec leur valeur : listvals = ", listvals);
    end

end