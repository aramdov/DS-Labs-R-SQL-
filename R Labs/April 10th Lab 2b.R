#PSTAT 10 LAB 2B
# 04/10/2019

# Question 1
data("airquality")
View(airquality)
?hist()
hist(airquality$Temp, breaks = 60, col = "blue")
Temperature <- airquality$Temp
hist(Temperature, main = "Daily temperature at La Guardia Airport", breaks = 60, col="blue", prob = TRUE)
# use histogram above for Question 6

# Question 2
z <- c(34,9,72,12,32,87,33,42,39,42,49,50,58,70)
stem(z, scale = 2)

zb <- c(34,9,72,12,32,87,33,42,39,42,49,116,50,58,70)
stem(zb, scale = 3)       # changed scale to 3 because 3 digit integer in this new vector

# Question 3
kings<- c(60, 43, 67, 50, 56, 42, 50, 65, 68, 43, 65, 34, 
          47, 34, 49, 41, 13, 35, 53, 56, 16, 43, 69, 59, 
          48, 59, 86, 55, 68, 51, 33, 49, 67, 77, 81, 67, 
          71, 81, 68, 70, 77, 56)
?boxplot
boxplot(kings, horizontal = TRUE)
boxplot(kings, vertical = TRUE)
boxplot(kings, horizontal = TRUE, col = "green", main = "Age of Death of Successive Kings in England", 
        xlab = "Age in Years")


# Question 4
data(islands)
length(islands) # total number of observations
summary(islands) # max is size of biggest islands
mean(islands)     # mean areas
?islands
islandquants <- quantile(islands)
islandquants    # vector that contains following quantiles

# Question 5
boxplot(Temp~Month, data = airquality, main = toupper("Compare Temperatues on monthly basis"), xlab = "Months",
        ylab = "Temperature", col = rainbow(8))


# Question 6
x <- c(4,5,6,1,4)
pie(x, col = c("red", "orange", "yellow", "green", "blue"))
MyColors <- c("red","orange", "yellow", "green", "slategray2")
pie(x, col = MyColors)
colors()
hist(Temperature, main = "Daily temperature at La Guardia Airport", breaks = 60, col = MyColors, prob = TRUE)
# Does not make sense to have different colors in a histogram, only pie chart
