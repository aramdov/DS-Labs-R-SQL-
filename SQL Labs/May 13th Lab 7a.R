### Lab 7a

# Question 3, import the data
EMPLOYEE <- read.csv(file = "EMPLOYEE.txt")
EMPLOYEE_PHONE <- read.csv(file = "EMPLOYEE_PHONE.txt")
CUSTOMER <- read.csv(file = "CUSTOMER.txt")
DEPARTMENT <- read.csv(file = "DEPARTMENT.txt")
INVOICES <- read.csv(file = "INVOICES.txt")
PRODUCT <- read.csv(file = "PRODUCT.txt")
SALES_ORDER <- read.csv(file = "SALES_ORDER.txt")
STOCK_TOTAL <- read.csv(file = "STOCK_TOTAL.txt")

# Question 4, copy the dataframes into RSQLite database
# Load the 3 libaries
library(DBI)
library(RSQLite)
library(sqldf)

TinyClothesdb <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")
dbWriteTable(TinyClothesdb, "EMPLOYEE", EMPLOYEE)
dbWriteTable(TinyClothesdb, "EMPLOYEE_PHONE", EMPLOYEE_PHONE)
dbWriteTable(TinyClothesdb, "CUSTOMER", CUSTOMER)
dbWriteTable(TinyClothesdb, "DEPARTMENT", DEPARTMENT)
dbWriteTable(TinyClothesdb, "INVOICES", INVOICES)
dbWriteTable(TinyClothesdb, "PRODUCT", PRODUCT)
dbWriteTable(TinyClothesdb, "SALES_ORDER", SALES_ORDER)
dbWriteTable(TinyClothesdb, "STOCK_TOTAL", STOCK_TOTAL)

# Question 5, list relations
dbListTables(TinyClothesdb)

# Question 7

# Part a
dbGetQuery(TinyClothesdb, "SELECT * FROM CUSTOMER WHERE NAME = 'CAROL' ")

#part b
dbGetQuery(TinyClothesdb, "SELECT PROD_NO FROM PRODUCT")

#part c
dbGetQuery(TinyClothesdb, "SELECT * FROM PRODUCT WHERE COLOR = 'GREEN' ")

#part d
dbGetQuery(TinyClothesdb, "SELECT * FROM PRODUCT WHERE NAME != 'PANTS' ")
dbGetQuery(TinyClothesdb, "SELECT * FROM PRODUCT WHERE NAME NOT IN (SELECT NAME FROM PRODUCT WHERE COLOR = 'BLUE')")

#part e
dbGetQuery(TinyClothesdb, "SELECT * FROM DEPARTMENT WHERE DEPT_NO = 'D2' ")
