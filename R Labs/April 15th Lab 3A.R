# PSTAT 10 LAB 3A

# Question 1 A new function
x <- c(2,3,4,5,3,1)
sort(x)
?sort
sort(x, decreasing = TRUE)

# Question 2
twelve <- c(10,20,30,40,50,60,70,80,90,100,110,120)
r <- c("a", "b", "c", "d")
c <- c("x", "y", "z")
matrix(twelve, nrow = 4, ncol = 3, dimnames = list(r,c), byrow = TRUE) # 4x3 matrix Byrow TRUE
twelve2 <- c(twelve,130) 
matrix(twelve2, nrow = 4, ncol = 3, dimnames = list(r,c), byrow = TRUE) # vector with 13 integers doesnt fit in 4x3

# Question 3
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
rr <- c("ROW1", "ROW2", "ROW3")
cc <- c("COL1", "COL2")
array(data = c(vector1,vector2), dim = c(3,2,2), dimnames = list(rr,cc, mn))
mn <- c("Matrix 1", "Matrix 2")
array(data = c(vector2,vector1), dim = c(3,2,2), dimnames = list(rr,cc, mn)) # change order of vectors, populates
# first matrix with all 6 integers in vector2 then does matrix 2 with vector 1 starting till it runs out of numbers
array(data = c(vector2,vector1), dim = c(3,2,4), dimnames = list(rr,cc, mn)) # array of 4 matrices can't work with
# 2 matrix names, but if remove 2 matrix names it can make 4 matrices but numbers just repeat

# Question 4
x <- c("a", "b", "c", "c", "d", "a")
x[c(1)]
x[5]
