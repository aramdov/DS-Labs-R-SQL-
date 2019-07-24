# PSTAT 10 Week 2 04/08/19 Lab

# 1 parts a,b,c,d

data("ChickWeight")
View(ChickWeight)
ChickWeight$weight
min(ChickWeight$weight)
mean(ChickWeight$weight)

# 2 parts a and b
z <- c(40, 55, 75, 20, 10)
lbls <- c("A", "B", "C", "D", "F")
pct <- round(z/sum(z)*100)
lbls <- paste(lbls, pct) #add percentage to the labels
lbls <- paste(lbls, "%",sep="") #add % to label
pie(z, labels = lbls, col=rainbow(length(lbls)), main = "Midterm Grade Distribution")

# 2 part c
pie(z, labels = lbls, col=rainbow(length(lbls)), main = "Midterm Grade Distribution", clockwise = FALSE)
# pART c and d NOTHING Changed when clockise = FALSE because default is clockwise = FALSE
#part E and F
pie(z,col=rainbow(length(lbls)), main = "Midterm Grade Distribution",labels = lbls)
# yes you can change the order of the terms in Pie chart Syntax
# Pie charts can be misleading statistics because of scale and representation.

# 3 parts a-d
data("airquality")
View(airquality)
hist(airquality$Temp)
Temperature <- airquality$Temp
hist(Temperature)
hist(Temperature, main = "Daily temperature at La Guardia Airport", col="red")

# 4
x <- c("blue", "red", "green", "yellow")
is.character(X)
is.numeric(x)
str(x) # another type of command to check structure of vector X and see if it's character

# 5
PSTAT10LAB <- print("mean = 1:5")
PSTAT10LAB
# The error code was because the object PSTAT10LAB was missing paraenthesis in the argument/syntax for Print function
# the object has to be defined outside/before the function to use print function