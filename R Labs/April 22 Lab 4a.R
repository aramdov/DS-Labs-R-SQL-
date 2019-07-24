library(dplyr)
library(readr)
library(tibble)

# Exercise 1
z <- c(1:12)
m <- matrix(z, nrow = 3, ncol = 2)
m[,2]     # 2nd column of matrix extraction
apply(m, 2, sum)


# Exercise 2
data("state")
getwd()
is.tibble(states)
is.data.frame(states)
rm(states)
states <- read_csv("states.csv")
is.tibble(states)
is.data.frame(states)
# the variables are integers and characters


# Exercise 3
colnames(states)
newstates <- select(states, X1)     # keep only variable X
View(newstates)

newstates2 <- rename(states, 'Us_States'=X1, 'Annual Income'=Income)
newstates2 <- select(newstates2, -c('Illiteracy', 'Life Exp', 'Murder', 'Frost', 'Area'))
View(newstates2)
