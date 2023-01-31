function importerDonnees()
    almost_strongly_correlated = []
    circle = []
    inverse_strongly_correlated = []
    multiple_strongly_correlated = []

    # Import données almost_strongly_correlated
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_50_1000_1_-2096.opb.txt")
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_50_10000_1_-21980.opb.txt")
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_100_1000_1_-2295.opb.txt")
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_100_10000_1_-23965.opb.txt")
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_200_1000_1_-2706.opb.txt")
    # Calcul Borne1 - le programme ne termine pas au bout de 10 min d'exécution
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_200_10000_1_-28310.opb.txt")
#=     push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_500_1000_1_-7241.opb.txt")
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_500_10000_1_-70063.opb.txt")
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_1000_1000_1_-14202.opb.txt")
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_1000_10000_1_-146390.opb.txt") =#

    # Import données circle
    push!(circle,
    "instancesETU/KNAPnewformat/circle/knapPI_16_20_1000_1_-2291.opb.txt")
    push!(circle,
    "instancesETU/KNAPnewformat/circle/knapPI_16_50_1000_1_-3408.opb.txt")
    push!(circle,
    "instancesETU/KNAPnewformat/circle/knapPI_16_100_1000_1_-4400.opb.txt")
    push!(circle,
    "instancesETU/KNAPnewformat/circle/knapPI_16_200_1000_1_-5370.opb.txt")

    # Import données inverse_strongly_correlated
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_50_1000_1_-994.opb.txt")
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_50_10000_1_-9984.opb.txt")
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_100_1000_1_-997.opb.txt")
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_100_10000_1_-9984.opb.txt")
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_200_1000_1_-997.opb.txt")
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_200_10000_1_-10311.opb.txt")


    # Import données multiple_strongly_correlated
    push!(multiple_strongly_correlated,
    "instancesETU/KNAPnewformat/multiple_strongly_correlated/knapPI_14_20_1000_1_-1794.opb.txt")
    push!(multiple_strongly_correlated,
    "instancesETU/KNAPnewformat/multiple_strongly_correlated/knapPI_14_50_1000_1_-2586.opb.txt")
    push!(multiple_strongly_correlated,
    "instancesETU/KNAPnewformat/multiple_strongly_correlated/knapPI_14_100_1000_1_-3697.opb.txt")
    push!(multiple_strongly_correlated,
    "instancesETU/KNAPnewformat/multiple_strongly_correlated/knapPI_14_200_1000_1_-5397.opb.txt")
    #push!(multiple_strongly_correlated,
    #"instancesETU/KNAPnewformat/multiple_strongly_correlated/knapPI_14_500_1000_1_-12746.opb.txt")




    return almost_strongly_correlated, circle, inverse_strongly_correlated, multiple_strongly_correlated
end