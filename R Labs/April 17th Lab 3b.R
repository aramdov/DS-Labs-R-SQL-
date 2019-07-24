# PSTAT 10 Lab 3b
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
rr <- c("ROW1", "ROW2", "ROW3")
cc <- c("COL1", "COL2")
mn <- c("Matrix 1", "Matrix 2")
array(c(vector1,vector2), )


# Question 2 Vectors of Mixed Type
one <- c(3,7,12,9)
two <- c("dog", "cat", "mouse")
both <- c(3,7,12,9, "dog", "cat", "mouse")
typeof(one)
str(one)
str(two)
str(both)     # part a, displays vector both as character
# part b can use a data frame

# Question 3 Computation with missing value
is.na(two)
x <- c(1,4,7,NA,12,19,15,21,20)   # vector x with a missing value
is.na(x)
mean(x)
mean(x, na.rm = TRUE)
