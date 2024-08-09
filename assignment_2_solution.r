#1.  Do the following:
trees <- c("Terminalia catappa", "Irvingia gabonensis", 
           "Milicia excelsa", "Lophira alata",
           "Eucalyptus camadulensis", "Ficus elastica")


#  b.   Add the following to the vector
trees <- append(trees, c("Hevea brasiliensis", "Spondias mombin", "Panthera leo",
       "Phaseolus vulgaris", "Parkia biglobosa",
       "Apis mellifera", "Melanerpes formicivorus"))  

  
#  2.  With the vector named **trees** you have created, answer the following:
  
#  a.   What is the position of the following:
  
#  -   *Apis mellifera*
which(trees == "Apis mellifera")
which(trees == "Ficus elastica")
which(trees == "Parkia biglobosa")
  
#  b.   What is the species with the following index number:
trees[3]
trees[5]
trees[6]
trees[7]
trees[12]
trees[c(3, 5, 6, 7, 12)]

# 3.  Remove all the items that are not trees from the vector **trees**
trees[-c(9, 10, 12, 13)]

#a.   How many trees are there? (get this using R code)
#and save it as **trees_only**.
length(trees[-c(9, 10, 12, 13)])
trees_only <- trees[-c(9, 10, 12, 13)]

# b.   Save the non-tree items into a vector called **non_tree**
trees[c(9, 10, 12, 13)]
non_tree <- trees[!trees %in% trees_only]

trees[trees %in% trees_only] # This trees
!trees %in% trees_only # 

#  c.  If you have a favorite tree, add it to the list of items in **trees_only** 
#using the **append()** function. If not, add the tree *Tectona grandis*
trees_only <- append(trees_only, "Tectona grandis")

#d.   If you add the tree *Gmelina arborea* to your trees vector with the append function with an index number of 25, what do you notice?
append(trees, "Gmelina arborea", after = 12)

#e.   Add "Ceiba pentandra" to the vector using the index **[]** and assign it to **trees** vector.
trees[25] <- "Ceiba pentandra"
trees
## Matrix

# 4.  Create a matrix of 20 numbers with 5 rows, 
# ensure the numbers are arranged by rows 
#and not by column.
set.seed(1234)
matrix(round(rnorm(20, mean = 5, sd = 1), 2), nrow = 5,
       byrow = TRUE)

matrix(1:20, nrow = 5, byrow = TRUE)

# 5. Turn the **trees_only** vector to a 4 * 3 matrix
# arranged by column and assign it to a name
#of your choice.

dare_tree <- matrix(trees_only, nrow = 4, byrow = FALSE)
matrix(trees_only, nrow = 4, ncol = 3, byrow = TRUE)
# 6.  What is the index position of *Milicia excelsa* 
# in trees matrix

which(dare_tree == "Milicia excelsa")
dare_tree[3, 1]
which(dare_tree[3, ] == "Milicia excelsa")

## Lists

# 7.  Create a list containing **non_tree** 
#and **trees** and **trees_only** give it the
# name **my_tree.**
my_tree <- list(non_tree, trees, trees_only)

# 8.   give a name to the objects in the list.
# You can use represent each object names to be
# the same as their vector form.
names(my_tree) <- c("non_tree", "trees", "trees_only")
list("non_tree" = non_tree, "trees" = trees,
     "trees_only" = trees_only)

my_tree

# 9.    Print "Ficus elastica" from the list object
my_tree$trees[6]
print(trees[which(trees == "Ficus elastica")])

#10.   What is the length of the list object created
length(my_tree)

#11.   What is the length of the **trees** object
#in the list created
length(my_tree$trees)


## Data Frames

#11.   Convert the matrix you
#created to a dataframe named **tree_df**
dare_tree <- data.frame(dare_tree)
tibble(dare_tree)

tree_df <- dare_tree |> as.data.frame()
  

# 12.   Change the variable names of the data frame 
# to `species_1`, `species_2`, and `species_3`
# using the function **setNames**
my_col_names <- c("species_1", "species_2", "species_3")
tree_df <- setNames(tree_df, my_col_names)

# 13.   Print all the trees in `species_3` column
# using **[]** and print `species 2` using **$**.

tree_df[,"species_3"]
tree_df$species_2
