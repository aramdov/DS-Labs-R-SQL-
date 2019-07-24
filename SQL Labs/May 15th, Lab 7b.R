### Lab 7b

library(DBI)
library(RSQLite)
library(sqldf)

TinyClothesdb <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")



# Question 1
dbGetQuery(TinyClothesdb, 'select age from EMPLOYEE where name = "BROWN"')


# Question 2
dbGetQuery(TinyClothesdb, 'select EMP_NO, NAME from EMPLOYEE where name LIKE "%R%" ') # whats 3 % functions for LIKE?


# Question 3
dbGetQuery(TinyClothesdb, 'select EMP_NO, NAME, AGE from EMPLOYEE where AGE != 21')


# Question 4
dbGetQuery(TinyClothesdb, 'select NAME from department')


# Question 5
dbGetQuery(TinyClothesdb, 'select * from SALES_ORDER where CUST_NO = "C3"')


# Question 6
dbGetQuery(TinyClothesdb, 'select NAME from PRODUCT where color = "WHITE"')


# Question 7
dbGetQuery(TinyClothesdb, 'select EMP_NO, OFFICE from EMPLOYEE_PHONE where EMP_NO = "E2"')


# Question 8
dbGetQuery(TinyClothesdb, 'select * from SALES_ORDER where CUST_NO = "C3" or CUST_NO = "C6"')


# Question 9
dbGetQuery(TinyClothesdb, 'select NAME from EMPLOYEE where Age > 30')
  # Not enough information because there are 2 SMITH last names, can't answer this question.
