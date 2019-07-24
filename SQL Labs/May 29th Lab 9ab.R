### Lab 9a/b

library(DBI)
library(RSQLite)
library(sqldf)

TinyClothesdb <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")

# Question 1
#part a
  dbGetQuery(TinyClothesdb, 'select PROD_NO, sum(QUANTITY) from SALES_ORDER_LINE group by PROD_NO')
  
#part b
TOTAL_ORDERS <- dbGetQuery(TinyClothesdb, 'select PROD_NO, sum(QUANTITY) as SumQuantity from SALES_ORDER_LINE group by PROD_NO')
dbWriteTable(TinyClothesdb, "TOTAL_ORDERS", TOTAL_ORDERS, overwrite = TRUE)

#part c
 dbGetQuery(TinyClothesdb, 'select * from STOCK_tOTAL inner join TOTAL_ORDERS on STOCK_TOTAL.prod_no = TOTAL_ORDERS.prod_no
                  where SumQuantity >= Quantity ')
 
 dbGetQuery(TinyClothesdb, 'select * from STOCK_TOTAL')

#part d
 
 
# Question 2
    # Need ORDER_NO and PROD_NO from SALES_ORDER_LINE, need NAME,COLOR from PRODUCT, need ORDER_NO and CUST_NO from SALES_ORDER, 
    # need NAME,CUST_NO from CUSTOMER
 
   dbGetQuery(TinyClothesdb, 'select * from SALES_ORDER_LINE')
 
    dbGetQuery(TinyClothesdb, 'select distinct C.NAME as CustName, P.NAME as ProductName, Color as RequiredColor, O.Order_No as SALES_ORDER_NO
	From CUSTOMER C, SALES_ORDER_LINE O, SALES_ORDER S, PRODUCT P
                WHERE C.NAME in ("ALEX", "CAROL") AND C.CUST_NO = S.CUST_NO AND S.ORDER_NO = O.ORDER_NO
                AND O.PROD_NO = P.PROD_NO ' )
    
# Question 3
    dbGetQuery(TinyClothesdb, 'select EMP_NO, DEPT_NO From EMPLOYEE where EMP_NO in (select EMP_NO from EMPLOYEE_PHONE
                where EXTENSION = "123") ')   # how to make it display extension number to confirm

# Question 4
    dbGetQuery(TinyClothesdb, 'select * from PRODUCT')
    
    dbGetQuery(TinyClothesdb, 'select * from product where NAME in (select NAME from PRODUCT where prod_no = "p1")')
    