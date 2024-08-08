#Data Structure Assignment 

## Creating a Vector 
trees <- c("Terminalia catappa", "Irvingia gabonensis", "Milicia excelsa","Lophira alata", "Eucalyptus camadulensis", "Ficus elastica")
##Adding vectors to exciting vector 
trees <- c(trees, "Hevea brasiliensis", "Spondias mombin", "Panthera leo", "Phaseolus vulgaris", "Parkia biglobosa", "Apis mellifera", "Melanerpes formicivorus")
 OR 
 trees <- append(trees, c("Hevea brasiliensis", "Spondias mombin", "Panthera leo", "Phaseolus vulgaris", "Parkia biglobosa", "Apis mellifera", "Melanerpes formicivorus"))

 ## Fining position 
which(trees =="Apis mellifera")
which(trees == "Ficus elastica")
which(trees == "Parkia biglobosa")

## Finding index numbers 
trees[3]  
trees[5]  
trees[6]  
trees[7]  
trees[12] 

## Removing vectors 
###The number of trees:
tree_species <- c("Terminalia catappa", "Irvingia gabonensis", "Milicia excelsa","Lophira alata", "Eucalyptus camadulensis", "Ficus elastica","Hevea brasiliensis", "Spondias mombin", "Parkia biglobosa")
trees_only <- trees[trees %in% tree_species]
###Another way: 
trees[-c (9, 10, 12, 13)]
length(trees[-c (9, 10, 12, 13)])
trees_only <- trees[-c(9, 10, 12, 13)]
##saving items 
trees[c(9, 10, 12, 13)]
trees[!trees %in% trees_only]


##Counting the number of trees 
length(trees_only)
###Saving non-trees 
non_trees <- append(trees_only, "Tectona grandis")

## Adding an item  to a vector 
trees_only <- append(trees_only, "Gmelina arborea", 25)
###observing the change after adding the vector
length(trees_only)

##Adding an item to vector using index 
append(trees, "Ceiba pentandra")

#Matrix 
## Creating a matrix (numbers and rows)
sos0_tree <- matrix (1:20, nrow = 5,byrow = TRUE)
trees_only <- matrix( nrow = 4, ncol = 3)
which(trees_only == "Milicia excelsa")

#Lists 
##Creating a list
my_tree <- list(non_trees, trees, trees_only)

##Giving names to objects within the list 
list(non_trees = non_trees, trees = trees, trees_only = trees_only)

##Print from the matrix object 
print(trees[which(trees == "Ficus elastica")])

## Get the length of an object 
length(my_tree)
length(trees)


#Data Frames 
## Converting matrix to a data frame
tree_df <-as.data.frame(soso_tree)

##Changing variable names of data frames 
setNames(tree_df, c("Species_1", "Species_2", "Species_3"))

## Print Tress in one column 
tree_df[, "Species_3"]
tree_df$Species_2
