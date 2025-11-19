# Investigate how species are distributed over different clusters.
Clusters created in this project https://github.com/JakoboEU/manchester_cluster_plots.

This created clusters of plots based on habitat classification within 20 x 20 m plots (for insect and plant surveys) and 120 x 120 m plots (for bird surveys).

These showed that good habitat clustering occurred for k = 3, 6, 8, 9, and 15 for insect/plants plots, and k = 3, 4, 6, 7, 8, 9, 12, 13, and 15 for bird plots.

Here we look at those clusters and what number of clusters allow the best distribution of species so that we get more indicator species.  Ideally we want clusters of plots that have unique species present.
Generalist species are species that are not indicator species, the p-value is NA, and they are assigned to each cluster of plots.

## Insects
### All Groupings
If we include all our insect groups, including generic groupings such as any butterfly, any hoverfly, any bumblebee, any white-tailed bumblebee, and any red-tailed bumblebee.

| k  | number_not_generalist | proportion_not_generalist | average_p_value |
|----|------------------------|---------------------------|-----------------|
| 3  | 15                     | 0.5555556                 | 0.3946000       |
| 6  | 25                     | 0.9259259                 | 0.3070400       |
| 8  | 25                     | 0.9259259                 | 0.2964000       |
| 9  | 25                     | 0.9259259                 | 0.2789200       |
| 12 | 27                     | 1.0000000                 | 0.3250370       |
| 15 | 27                     | 1.0000000                 | 0.2966667       |

#### Insect NMDS for 9 clusters
![Insect NMDS for 9 clusters](/output/insect_site_nmds_9.jpg)

### Species Only
Excluding those generic groups and just keeping actual species

| k  | number_not_generalist | proportion_not_generalist | average_p_value |
|----|------------------------|---------------------------|-----------------|
| 3  | 15                     | 0.5555556                 | 0.3946000       |
| 6  | 22                     | 1.0000000                 | 0.3114545       |
| 8  | 20                     | 0.9090909                 | 0.3294000       |
| 9  | 22                     | 1.0000000                 | 0.2854091       |
| 12 | 22                     | 1.0000000                 | 0.3494545       |
| 15 | 22                     | 1.0000000                 | 0.3395000       |

#### Insect (species only) NMDS for 9 clusters
![Insect NMDS for 9 clusters](/output/insect_no_non_species_site_nmds_9.jpg)

## Plants

| k  | number_not_generalist | proportion_not_generalist | average_p_value |
|----|------------------------|---------------------------|-----------------|
| 3  | 38                     | 0.5205479                 | 0.2498421       |
| 6  | 60                     | 0.8219178                 | 0.2253833       |
| 8  | 65                     | 0.8904110                 | 0.2002154       |
| 9  | 70                     | 0.9589041                 | 0.1955286       |
| 12 | 72                     | 0.9863014                 | 0.2300417       |
| 15 | 72                     | 0.9863014                 | 0.2209861       |

### Plant NMDS for 9 clusters
![Plant NMDS for 9 clusters](/output/plant_site_nmds_9.jpg)

## Birds

| k  | number_not_generalist | proportion_not_generalist | average_p_value |
|----|------------------------|---------------------------|-----------------|
| 3  | 18                     | 0.56250                   | 0.2201667       |
| 4  | 26                     | 0.81250                   | 0.1621538       |
| 6  | 26                     | 0.81250                   | 0.1825769       |
| 7  | 28                     | 0.87500                   | 0.1688929       |
| 8  | 27                     | 0.84375                   | 0.1874444       |
| 9  | 28                     | 0.87500                   | 0.1475357       |
| 12 | 29                     | 0.90625                   | 0.1467586       |
| 15 | 30                     | 0.93750                   | 0.1538667       |

### Bird NMDS for 9 clusters
![Bird NMDS for 9 clusters](/output/bird_site_nmds_9.jpg)
