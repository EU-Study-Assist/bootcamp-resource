## a. Create a vector named trees with the species below:
## Terminalia catappa
## Irvingia gabonensis
## Milicia excelsa
## Lophira alata
## Eucalyptus camadulensis
## Ficus elastica

trees <- c('Terminalia catappa', 'Irvingia gabonensis', 'Milicia excelsa',
           'Lophira alata', 'Eucalyptus camadulensis', 'Ficus elastica')
trees

## b. Add the following to the vector:
## Hevea brasiliensis
## Spondias mombin
## Panthera leo
## Phaseolus vulgaris
## Parkia biglobosa
## Apis mellifera
## Melanerpes formicivorus

trees <- append(trees, c('Hevea brasiliensis', 'Spondias mombin','Panthera leo', 
                         'Phaseolus vulgaris', 'Parkia biglobosa', 'Apis mellifera',
                        'Melanerpes formicivorus'))

trees

## 2. With the vector named trees you have created, answer the following:
## a. What is the position of the following:
## Apis mellifera
apis_position <- which(trees == 'Apis mellifera')
apis_position

## Ficus elastica
ficus_position <- which(trees == 'Ficus elastica')
ficus_position

## Parkia biglobosa
parkia_position <- which(trees == 'Parkia biglobosa')
parkia_position

## Method 2
series_plant <- c('Apis mellifera', 'Ficus elastica', 
                   'Parkia biglobosa')
positions <- which(trees %in% series_plant)
positions

## b. What is the species with the following index number:
## 3
trees[3]
spec_1 <- trees[3]
spec_1
## 'Milicia excelsa' 

## 5
trees[5]
spec_5 <- trees[5]
spec_5 
## 'Eucalyptus camadulensis' 

## 6
trees[6]
spec_6 <- trees[6]
spec_6 
## 'Ficus elastica' 

## 7
trees[7]
spec_7 <- trees[7]
spec_7  
## 'Hevea brasiliensis'

## 12
trees[12]
spec_12 <- trees[12]
spec_12
## 'Apis mellifera'


## 3. Remove all the items that are not trees from the vector trees
trees
trees_only <- trees[!trees %in% c('Panthera leo', 'Phaseolus vulgaris', 
                             'Apis mellifera', 'Melanerpes formicivorus')]
## a. How many trees are there? (get this using R code) and save it as trees_only.
trees_only <- trees[!trees %in% c('Panthera leo', 'Phaseolus vulgaris', 
                                  'Apis mellifera', 'Melanerpes formicivorus')]
trees_only
length(trees_only)

## b. Save the non-tree items into a vector called non_tree
non_tree <- c('Panthera leo', 'Phaseolus vulgaris', 
              'Apis mellifera', 'Melanerpes formicivorus')
non_tree

## c. If you have a favorite tree, add it to the list of items in trees_only using the append()
## function. If not, add the tree Tectona grandis
trees_only <- append(trees_only,  'Tectona grandis')
trees_only 

## d. If you add the tree Gmelina arborea to your trees vector with the append function
## with an index number of 25, what do you notice?s
trees_only <- append(trees_only, 'Gmelina arborea', 25)
trees_only
trees_only[25] # Not assigned

##  e. Add “Ceiba pentandra” to the vector using the index [] and assign it to trees vector.
trees_only[25] <- 'Ceiba pentandra'
trees_only

## Matrix
## 4. Create a matrix of 20 numbers with 5 rows, ensure the numbers are arranged by rows
## and not by column.
matrix(1:20, nrow = 5, byrow = TRUE)

## 5. Turn the trees_only vector to a 4 * 3 matrix arranged by column
trees_only <- matrix(trees_only, nrow = 4, ncol = 3, byrow = FALSE)
trees_only

## 6. What is the index position of Milicia excelsa in trees matrix
## Lists
which(trees_only == 'Milicia excelsa')
position_milicia <- which(trees_only == 'Milicia excelsa')
position_milicia  ## Index = 3

## 7. Create a list containing non_tree and trees and trees_only give it the name my_tree.
my_tree <- list(non_tree, trees, trees_only)
my_tree

## 8. give a name to the objects in the list. You can use represent each object names to be the
## same as their vector form.
my_tree <- list(non_tree, trees, trees_only)
my_tree

## 9. Print “Ficus excelsa” from the matrix object
my_tree[my_tree == 'Ficus excelsa']

## 10. What is the length of the list object created
length(my_tree)

## 11. What is the length of the trees object in the list created
length(my_tree)
length(my_tree$trees)

## Data Frames
## 11. Convert the matrix you created to a dataframe names tree_df
tree_df <-  data.frame(trees_only)
tree_df
## 12. Change the variable names of the data frame to species_1, species_2, and species_3
## using the function setNames
tree_df <- setNames(tree_df, c('species_1', 'species_2', 'species_3'))
tree_df
## 13. Print all the trees in species_3 column using [] and print species 2 using $.
tree_df[, "species_3"]
tree_df$species_2
