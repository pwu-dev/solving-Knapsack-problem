
function tester_trouverSolution(filename_path)
    # Données du test
    prix, poids, _ = readKnaptxtInstance(filename_path)
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
    tab_max = [C0 C1 C2 C3 C4 C5 C6 C7 C8 C9 C10]
    x_max_sol = [0,1,0,1]

    @testset "Test" begin
        x_max = trouverSolution(tab_max,poids)
        for i in 1:length(x_max_sol)
            @test x_max[i] == x_max_sol[i]
        end
        
    end
end