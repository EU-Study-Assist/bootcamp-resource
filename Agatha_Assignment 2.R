##Vector
trees <- c("Terminalia catappa", "Irvingia gabonensis", "Milicia excelsa", "Lophira alata", "Eucalyptus camadulensis", "Ficus elastica")
trees
tree_add <- c("Hevea brasiliensis","Spondias mombin","Panthera leo","Phaseolus vulgaris","Parkia biglobosa","Apis mellifera","Melanerpes formicivorus")
tree_add
append(trees,tree_add)
trees<-append(trees,tree_add)
trees
which(trees=="Apis mellifera")
which(trees=="Ficus elastica")
which(trees=="Parkia biglobosa")
trees[c(3,5,6,7,12)]
trees[-c(9,10,12,13)]
trees_only <-trees[-c(9,10,12,13)]
trees_only
length(trees_only)
non_tree <-trees[c(9,10,12,13)]
non_tree
append(trees_only,"Tectona grandis")
trees[25] <- "Gmelina arborea"
trees
trees[14]<-"Ceiba pentandra"
trees

##Matrix
set.seed(1234)
matrix((round(rnorm(20,5,1),2)),nrow = 5,byrow = TRUE)
tree_matrix <-matrix(trees_only,nrow = 4,ncol = 3, byrow = FALSE)
which(trees_matrix=="Milicia excelsa")

##Lists
list(non_tree, trees, trees_only)
my_tree <- list(non_tree, trees, trees_only)
my_tree
names(my_tree) <- c("non_tree", "trees","trees_only")
my_tree
print(my_tree$trees_only[6])
length(my_tree)
length(my_tree$trees)

##Data Frames
tree_df<-data.frame(tree_matrix)
print(tree_df)
setNames(tree_df,c("species_1", "species_2","species_3"))
tree_df <-setNames(tree_df,c("species_1", "species_2","species_3"))
print(tree_df)
tree_df["species_3"]
tree_df$species_2
