### Number 1A
Trees <- c("Terminalia catappa", "Irvingia gabonesis", 
  "Milicia excesia", "Lophira alata", "Eucalyptus camadulensis", "Ficus elastica")
Trees

### Number 1B
Trees <- append(Trees, c("Hevea brasilensis", "Spondias mombin", "Panthera leo", 
       "Phaseolus vulgaris", 
       "Parkia biglobosa", "Apis mellifera", "Melanerpes formicivorus"))
Trees

### Number 2A
which(Trees == "Apis mellifera")
# position 12
which(Trees == "Ficus elastica")
# position 6
which(Trees == "Parkia biglobosa")
# position 11

### Number 2B
Trees[3]
# "Milicia excesia"
Trees[5]
# "Eucalyptus camadulensis"
Trees[6]
# "Ficus elastica"
Trees[7]
# "Hevea brasilensis"
Trees[12]
# "Apis mellifera"

### Number 3
?setdiff
Trees_only <- setdiff(Trees, c("Panthera leo", "Phaseolus vulgaris", "Apis mellifera", 
        "Melanerpes formicivorus"))
Trees_only
length(Trees)

### Number 3A
length(Trees_only)

# There are 9 trees there
### Number 3B
Non_tree <- c("Panthera leo", "Phaseolus vulgaris", "Apis mellifera", 
              "Melanerpes formicivorus")
### Number 3C
Trees_only <- append(Trees_only, "Tectona grandis")
Trees
### Number 3D
Trees <- append(Trees, "Gmelina arborea", after = 25)
# it simply added it to the last (14th) position.
# I guess it is because the element is not up to 25
### Number 3E
length(Trees)
Trees[15] <- "Ceiba pentandra"
Trees


### Matrix
# Number 4
Numbers <- runif(20, 4, 15)
Numbers
Numbers <- round(Numbers, 0)
Mat_NUm <- matrix(Numbers, 5, byrow = TRUE)
Mat_NUm
Trees_only
Trees_only <- append(Trees_only, c("Gmelina arborea", "Ceiba pentandra"))
length(Trees_only)

### NUmber 5
 Mat_Trees_only <- matrix (Trees_only, 4)
### NUmber 6
Mat_Trees_only[3, 1]
### the index position is [3,1]

### List
# Number 7
My_Tree <- list(Non_tree, Trees, Mat_Trees_only)


### Number 8
?names
My_Tree <- names(My_Tree) <- c("Vector1", "Vector2", "Matrix")


My_Tree

### Number 9
My_Tree[[3]][2, 2]

## Number 10
length(My_Tree)
### the length is 3

### Number 11
length(My_Tree[2])

### the length is 1

### Data Frames
### Number 11
Tree_df <- as.data.frame(Mat_Trees_only)

## Number 12
Tree_df <- setNames(Tree_df, c("Species 1", "Species 2", "Species 3"))
Tree_df
### Number 13
Tree_df[, "Species 3"]
Tree_df$`Species 2`
