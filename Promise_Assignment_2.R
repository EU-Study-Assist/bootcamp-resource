# Vectors

# Question 1
## Creating the vector "trees"
trees <- c("Terminalia catappa", "Irvingia gabonensis", "Milicia excelsa",
           "Lophira alata", "Eucalyptus camadulensis", "Ficus elastica")
trees

### adding additional tree species to the vector "trees"
additional_species <- (c("Hevea brasiliensis", "Spondias mombin", "Panthera leo",
                         "Phaseolus vulgaris", "Parkia biglobosa", "Apis mellifera",
                         "Melanerpes formicivorus"))
additional_species
trees <- c(trees, additional_species)
trees

# Question 2
## (a) finding the position of the objects " Apis mellifera, Ficus elastica, Parkia biglobosa" in trees

which(trees == "Apis mellifera") # position 12
which(trees == "Ficus elastica") # position 6
which(trees == "Parkia biglobosa") # position 11

### (b) find species with the index numbers 3, 5, 6, 7, 12 in trees
trees[c(3, 5, 6, 7, 12)] # "Milicia excelsa"         "Eucalyptus camadulensis" "Ficus elastica"         
                        ##"Hevea brasiliensis"      "Apis mellifera"

# Question 3
## Removing the non trees from the vector "trees"

trees <- c("Terminalia catappa", "Irvingia gabonensis", "Milicia excelsa",
           "Lophira alata", "Eucalyptus camadulensis", "Ficus elastica",
           "Hevea brasiliensis", "Spondias mombin", "Panthera leo",
           "Phaseolus vulgaris", "Parkia biglobosa", "Apis mellifera",
           "Melanerpes formicivorus")

non_trees <- c("Panthera leo", "Phaseolus vulgaris", "Apis mellifera", 
               "Melanerpes formicivorus")
non_trees
trees_only <- setdiff(trees, non_trees)
trees_only
length(trees_only) # 9 trees

## (b)
non_trees <- c("Panthera leo", "Phaseolus vulgaris", "Apis mellifera", 
               "Melanerpes formicivorus")
non_trees

### (c)
trees_only <- append(trees_only, "Tectona grandis")
trees_only

#### (d)

trees_only <- append(trees_only, "Gmelina arborea")
trees_only
trees_only[25] # it returned NA

##### (e) adding “Ceiba pentandra”
trees_only[12] <- "Ceiba pentandra"
trees_only
trees <- c(non_trees, trees_only)
trees

# Matrix

# Question 4
## creating a matrix of 20 numbers with 5 rows arranged by rows
numbers <- 1:20
matrix_by_row <- matrix(numbers, nrow = 5, byrow = TRUE)
matrix_by_row

# Question 5
## trees_only_matrix
trees_only_matrix <- matrix(trees_only, nrow = 4, ncol = 3)
trees_only_matrix

#Question 6
which(trees_only_matrix == "Milicia excelsa") # it returned position 3

# Lists

#Question 7
## Creating a list 
my_tree <- list(non_trees, trees, trees_only)
my_tree

# Question 8
### giving names to the objects in my list
names(my_tree) <- c(letters[1:3])
my_tree

# Question 9
## printing "Ficus elastica" from trees_only_matrix as there is no "Ficus esclesa in the object
trees_only_matrix[2, 2]

# Question 10
## checking the length of my_tree
length(my_tree) # it returned 3

# Question 11
## checking the length of trees in the list created
length(my_tree$b) # it returns 16

# Data Frames

# Question 12
## converting the matrix "trees_only_matrix" to a data frame
tree_df <- trees_only_matrix |>
  data.frame()
tree_df
# Question 13
## Changing the name variables in trees_df
colnames(tree_df) <- c("species_1", "species_2", "species_3")
tree_df  

# Question 14
## Assessing species_3 using []
tree_df[ , 3]

### Assessing species_2 using $
tree_df$species_2
