### Lab 8a

library(DBI)
library(RSQLite)
library(sqldf)

TinyClothesdb <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")

# Question 1 - 3
dbGetQuery(TinyClothesdb, 'select * from CUSTOMER') # CUSTOMER <CUST_NO, NAME, ADDRESS>
# Primary Keys are CUST_NO, Foreign Keys are NAME, ADDRESS

dbGetQuery(TinyClothesdb, 'select * from Product')   # PRODUCT <PROD_NO, NAME, COLOR>
# Primary Keys are PROD_NO, Foreign Keys are NAME, COLOR

dbGetQuery(TinyClothesdb, 'select * from SALES_ORDER') # SALES_ORDER <ORDER_NO, DATE, CUST_NO>
# Primary Keys are ORDER_NO, Foreign Keys are DATE, CUST_NO


SALES_ORDER_LINE <- read.csv(file = "SALES_ORDER_LINE.txt")
dbWriteTable(TinyClothesdb, "SALES_ORDER_LINE", SALES_ORDER_LINE)
dbGetQuery(TinyClothesdb, 'select * from SALES_ORDER_LINE')  # SALEs_ORDER_LINE <ORDER_NO, PROD_NO, QUANTITY>


SALES_ORDER <- read.csv(file = "SALES_ORDER.txt")
STOCK_TOTAL <- read.csv(file = "STOCK_TOTAL.txt")
INVOICES <- read.csv(file = "INVOICES.txt")

dbWriteTable(TinyClothesdb, "SALES_ORDER", SALES_ORDER, overwrite = TRUE)
dbWriteTable(TinyClothesdb, "STOCK_TOTAL", STOCK_TOTAL, overwrite = TRUE)
dbWriteTable(TinyClothesdb, "INVOICES", INVOICES, overwrite = TRUE)

# Question 4
dbGetQuery(TinyClothesdb, 'select * from SALES_ORDER_LINE')
dbGetQuery(TinyClothesdb, 'select ORDER_NO, SUM(QUANTITY) from SALES_ORDER_LINE where "ORDER_NO" = 2')

# Question 5
dbGetQuery(TinyClothesdb, 'select * from INVOICES')
dbGetQuery(TinyClothesdb, 'select SUM(QUANTITY * PRICE) from INVOICES where "ORDER_NO" = 2')

# Question 6
dbGetQuery(TinyClothesdb, 'select avg(AGE) from EMPLOYEE')

dbGetQuery(TinyClothesdb, 'select max(AGE), min(AGE) from EMPLOYEE where DEPT_NO = "D1"')

dbGetQuery(TinyClothesdb, 'select count(EMP_NO) from EMPLOYEE')

dbListTables(TinyClothesdb)
