"""
Importer des données plus grande que celle de importerDonnees.jl
"""
function importerDonnees2()
    almost_strongly_correlated = []
    circle = []
    inverse_strongly_correlated = []
    multiple_strongly_correlated = []

    # Import données almost_strongly_correlated
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_200_10000_1_-28310.opb.txt")
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_500_1000_1_-7241.opb.txt")
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_500_10000_1_-70063.opb.txt")
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_1000_1000_1_-14202.opb.txt")
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_1000_10000_1_-146390.opb.txt") 
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_2000_1000_1_-28124.opb.txt") 
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_2000_10000_1_-292470.opb.txt") 
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_5000_1000_1_-71745.opb.txt") 
    push!(almost_strongly_correlated,
    "instancesETU/KNAPnewformat/almost_strongly_correlated/knapPI_5_5000_10000_1_-733679.opb.txt") 


    # Import données circle
    push!(circle,
    "instancesETU/KNAPnewformat/circle/knapPI_16_500_1000_1_-13145.opb.txt")
    push!(circle,
    "instancesETU/KNAPnewformat/circle/knapPI_16_1000_1000_1_-27147.opb.txt")
    push!(circle,
    "instancesETU/KNAPnewformat/circle/knapPI_16_2000_1000_1_-54945.opb.txt")
    push!(circle,
    "instancesETU/KNAPnewformat/circle/knapPI_16_5000_1000_1_-138116.opb.txt")

    push!(circle,
    "instancesETU/KNAPnewformat/circle/knapPI_16_10000_1000_1_-277046.opb.txt")
    push!(circle,
    "instancesETU/KNAPnewformat/circle/knapPI_16_10000_1000_2_-464756.opb.txt")
    push!(circle,
    "instancesETU/KNAPnewformat/circle/knapPI_16_10000_1000_3_-633245.opb.txt")

    # Import données inverse_strongly_correlated
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_500_1000_1_-2712.opb.txt")
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_500_10000_1_-27309.opb.txt")
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_1000_1000_1_-5380.opb.txt")
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_1000_10000_1_-52881.opb.txt")
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_2000_1000_1_-10699.opb.txt")
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_2000_10000_1_-106879.opb.txt")
    push!(inverse_strongly_correlated,
    "instancesETU/KNAPnewformat/inverse_strongly_correlated/knapPI_4_5000_1000_1_-26956.opb.txt")


    # Import données multiple_strongly_correlated
    push!(multiple_strongly_correlated,
    "instancesETU/KNAPnewformat/multiple_strongly_correlated/knapPI_14_500_1000_1_-12746.opb.txt")
    push!(multiple_strongly_correlated,
    "instancesETU/KNAPnewformat/multiple_strongly_correlated/knapPI_14_1000_1000_1_-26616.opb.txt")
    push!(multiple_strongly_correlated,
    "instancesETU/KNAPnewformat/multiple_strongly_correlated/knapPI_14_2000_1000_1_-54180.opb.txt")
    push!(multiple_strongly_correlated,
    "instancesETU/KNAPnewformat/multiple_strongly_correlated/knapPI_14_5000_1000_1_-134202.opb.txt")
    push!(multiple_strongly_correlated,
    "instancesETU/KNAPnewformat/multiple_strongly_correlated/knapPI_14_10000_1000_1_-270697.opb.txt")


    return almost_strongly_correlated, circle, inverse_strongly_correlated, multiple_strongly_correlated
end