#Data Structure Assignment Answers 
##Creating a vector 
trees <- c("Terminalia catappa", "Irvingia gabonensis", "Milicia excelsa", "Lophira alata", "Eucalyptus camadulensis", "Ficus elastica")
##Adding items on a vector 
trees <- append(trees, c("Hevea brasiliensis", "Spondias mombin", "Panthera leo",
                          "Phaseolus vulgaris", "Parkia biglobosa", "Apis mellifera",
                          "Melanerpes formicivorus"))
##Finding position of vectors 
which(trees == "Apis mellifera")
which(trees == "Ficus elastica")
which(trees == "Parkia biglobosa")

##Finding names of items using numbers 
trees[3]
trees[5]
trees[6]
trees[7]
trees[12]

##Removing items from vector and renaming the vector to trees_only
trees_only <- trees[-c(9, 10, 12, 13)]
length(trees_only)
length(trees[-c (9, 10, 12, 13)])

##Save removed trees into new vector called non_trees
non_tree <- trees[c(9, 10, 12, 13)]
OR
non_tree <- trees[!trees %in% trees_only]
OR  
trees[!trees %in% trees_only] ##THIS IA A FILTER OUT METHOD FROM THE TREES VECTOR
