trees <- c("Terminalia catappa", "Irvingia gabonensis", "Milicia excelsa", 
           "Lophira alata", "Eucalyptus camadulensis", "Ficus elastica")
trees
trees[7] <- "Hevea brasiliensis"
trees[8] <- "Spondias mombin"
trees[9] <- "Panthera leo"
trees[10] <- "Phaseolus vulgaris"
trees[11] <- "Parkia biglobosa"
trees[12] <- "Apis mellifera"
trees[13] <- "Melanerpes formicivorus"

trees
which(trees == "Apis mellifera")
which(trees == "Ficus elastica")
which(trees == "Parkia biglobosa")

trees[3]
trees[5]
trees[6]
trees[7]
trees[12]

# List of tree species
tree_species <- c("Terminalia catappa", "Irvingia gabonensis", "Milicia excelsa", 
                  "Lophira alata", "Eucalyptus camadulensis", "Ficus elastica", 
                  "Hevea brasiliensis", "Spondias mombin", "Parkia biglobosa")

# Separate trees from non-trees
trees_only <- trees[trees %in% tree_species]
non_tree <- trees[!trees %in% tree_species]


num_trees <- length(trees_only)     # Count the number of tree species

num_trees  # Number of trees
non_tree   # Vector of non-tree items


trees_only <- append(trees_only, "Tectona grandis")     # Add favorite tree or "Tectona grandis"
trees_only

trees_only <- append(trees_only, "Gmelina arborea", 25)    # Add "Gmelina arborea" at index 25

trees_only              # It takes the last position, not the index

trees_only[10] <- "Ceiba pentandra"     # Add "Ceiba pentandra" at a specific index
trees_only




