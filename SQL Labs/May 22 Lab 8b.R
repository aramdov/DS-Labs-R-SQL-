### Lab 8b

library(DBI)
library(RSQLite)
library(sqldf)

TinyClothesdb <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")


# Question 1
dbGetQuery(TinyClothesdb, 'select NAME as FirstName from CUSTOMER')

# Question 2
dbGetQuery(TinyClothesdb, 'select * from SALES_ORDER_LINE')
dbGetQuery(TinyClothesdb, 'select * from STOCK_TOTAL')
# Prod_no P7 has 0 quantity, so no longer stock maybe, but it depends on profitability and more variables

# Question 3
PRODUCT <- read.csv(file = "PRODUCT.txt")
is.data.frame(PRODUCT)

# Question 4
dbGetQuery(TinyClothesdb, 'select * from SALES_ORDER_LINE')
# Order 1 has total 10 items

# Question 5
dbGetQuery(TinyClothesdb, 'select * from STOCK_TOTAL')
dbGetQuery(TinyClothesdb, 'select * from STOCK_TOTAL Order by 1 Desc')

# Question 6
dbGetQuery(TinyClothesdb, 'select * from INVOICES Order by 4 Desc')

# Question 7
dbGetQuery(TinyClothesdb, 'select SOL.PROD_NO, sum(SOL.Quantity) from SALES_ORDER_LINE SOL where SOL.PROD_NO
           ="p1"')

# Question 8
dbGetQuery(TinyClothesdb, 'select ADDRESS from CUSTOMER natural join SALES_ORDER where ORDER_NO = "1"')
