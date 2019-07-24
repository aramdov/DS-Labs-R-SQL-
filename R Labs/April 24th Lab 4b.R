# Lab 4b PSTAT 10

## Exercise 1 part a ; a loop that generates 1-10
a_loop <- c(1:10)
for (j in a_loop) {
  print(j)
}

### Exercise 1 part b ; a loop that generates 1-10 but skips first 5 iterations
for (j in a_loop) {
  if(j < 5)
    next
  print(j)
}


## Exercise 2 ; a matrix containg the alphabet as it's data
matrix(LETTERS, nrow = 13, ncol = 2)
