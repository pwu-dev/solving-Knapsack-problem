
function tester_creerTabMax(filename_path)
    # Données du test
    prix, poids, capacite_initiale = readKnaptxtInstance(filename_path)
    nb_obj = length(prix)
    C0 = zeros(nb_obj+1,1)
    C1 = C0
    C2 = C0
    C3 = [0,0,0,12,12]
    C4 = [0,0,40,40,40]
    C5 = C4
    C6 = C4
    C7 = [0,42,42,52,52]
    C8 = C7
    C9 = [0,42,42,52,65]
    C10 = [0,42,42,54,65]
    tab_max_sol = [C0 C1 C2 C3 C4 C5 C6 C7 C8 C9 C10]

    @testset "Test" begin
        tab_max = creerTabMax(prix,poids,capacite_initiale)
        for i in 1:(nb_obj+1)
            for j in 1:(capacite_initiale+1)
                @test tab_max[i,j] == tab_max_sol[i,j]
            end
        end 
    end
end