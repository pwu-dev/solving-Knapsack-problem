
function tester_ExplorerAutreNoeud(numero_noeud::Int)
    # Données du test relative au schéma du cours avec borne1
    noeud0 = Noeud(0,10,100,0)
    noeud1 = Noeud(1,6,76,40)
    noeud2 = Noeud(2,10,60,0)
    noeud3 = Noeud(3,-1,77,82)
    noeud4 = Noeud(4,6,70,40)
    noeud5 = Noeud(5,1,69,65)
    noeud6 = Noeud(6,6,64,40)
    noeud7 = Noeud(7,-2,77,77)
    noeud8 = Noeud(8,1,65,65)
    # Liste des noeuds en entrée de ExplorationAutreNoeud de l'exemple du cours
    listnodesIN2 = [noeud0]
    listnodesIN3 = [noeud0,noeud1,noeud3]
    listnodesIN6 = [noeud0,noeud1,noeud4,noeud6]
    listnodesIN7 = [noeud0,noeud1,noeud4,noeud5,noeud7]
    listnodesIN8 = [noeud0,noeud1,noeud4,noeud5,noeud8]

    # Liste des noeuds en sortie de ExplorationAutreNoeud de l'exemple du cours
    # Le nouveau noeud est ajouté à listnodes en dehors de la fonction ExplorationAutreNoeud
    listnodesOUT0 = []
    listnodesOUT2 = [noeud0]
    listnodesOUT4 = [noeud0,noeud1]
    listnodesOUT6 = [noeud0,noeud1,noeud4]
    listnodesOUT8 = [noeud0,noeud1,noeud4,noeud5]
      

    
    # Enumeration de listobjs selon le numero du noeud 
    listobjs0 = []
    listobjs1 = [2]
    listobjs2 = [2]
    listobjs3 = [2,1]
    listobjs4 = [2,1]
    listobjs5 = [2,1,4]
    listobjs6 = [2,1,4]
    listobjs7 = [2,1,4,3]
    listobjs8 = [2,1,4,3]
    listvals0 = []
    listvals1 = [1]
    listvals2 = [0]
    listvals3 = [1,1]
    listvals4 = [1,0]
    listvals5 = [1,0,1]
    listvals6 = [1,0,0]
    listvals7 = [1,0,1,1]
    listvals8 = [1,0,1,0]
    println();

    @testset "abc" begin
        # Cas de test noeud 3, passage au noeud 4
        if numero_noeud == 3   
            listobjs = listobjs3
            listvals = listvals3
            listnodes = listnodesIN3
            stop = ExplorerAutreNoeud!(listobjs, listvals, listnodes)
            @test listobjs == listobjs4
            @test listvals == listvals4
            @test listnodes == listnodesOUT4
            @test stop == false
        # Cas de test noeud 7, passage au noeud 8
        elseif numero_noeud == 7
            listobjs = listobjs7
            listvals = listvals7
            listnodes = listnodesIN7
            stop = ExplorerAutreNoeud!(listobjs, listvals, listnodes)
            @test listobjs == listobjs8
            @test listvals == listvals8
            @test listnodes == listnodesOUT8
            @test stop == false
        # Cas de test noeud 8, passage au noeud 6
        elseif numero_noeud == 8
            listobjs = listobjs8
            listvals = listvals8
            listnodes = listnodesIN8
            stop = ExplorerAutreNoeud!(listobjs, listvals, listnodes)
            @test listobjs == listobjs6
            @test listvals == listvals6
            @test listnodes == listnodesOUT6
            @test stop == false
        # Cas de test noeud 6, passage au noeud 2
        elseif numero_noeud == 6
            listobjs = listobjs6
            listvals = listvals6
            listnodes = listnodesIN6
            stop = ExplorerAutreNoeud!(listobjs, listvals, listnodes)
            @test listobjs == listobjs2
            @test listvals == listvals2
            @test listnodes == listnodesOUT2
            @test stop == false
        # Cas de test noeud 2, passage au noeud 0
        elseif numero_noeud == 2
            listobjs = listobjs2
            listvals = listvals2
            listnodes = listnodesIN2
            stop = ExplorerAutreNoeud!(listobjs, listvals, listnodes)
            @test listobjs == listobjs0
            @test listvals == listvals0
            @test listnodes == listnodesOUT0
            @test stop == true
        else 
            println("cas_test non répertorié"); 
            listobjs = []
            listvals = []
            listnodes = []
            stop = false
        end 
        println("Localisation du noeud avant exploration : numero_noeud = ", numero_noeud);
        println("La listobjs du nouveau noeud : listobjs = ", listobjs);
        println("La listvals du nouveau noeud : listvals = ", listvals);
    end

end