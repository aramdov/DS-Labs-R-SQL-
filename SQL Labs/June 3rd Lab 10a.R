### Lab 10a


library(DBI)
library(RSQLite)
library(sqldf)

TinyClothesdb <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")



# Question 1
NEWPRODUCT <- dbGetQuery(TinyClothesdb, 'select * from product')

# Question 2
dbWriteTable(TinyClothesdb, "NEWPRODUCT", NEWPRODUCT)

# Question 3
dbListTables(TinyClothesdb)

# QUestion 4
dbGetQuery(TinyClothesdb, 'select * from NEWPRODUCT where prod_no in ("p1", "p2")')

# Question 5
dbListFields(TinyClothesdb, 'NEWPRODUCT')

# QUestion 6
dbSendQuery(TinyClothesdb, 'Insert into NEWPRODUCT values ("p9", "socks", "orange")')
dbGetQuery(TinyClothesdb, 'select * from NEWPRODUCT')

# Question 7
dbSendStatement(TinyClothesdb, 'Delete from NEWPRODUCT where prod_no = "p9"')

# Question 8
dbGetQuery(TinyClothesdb, 'select * from NEWPRODUCT')
NEWPRODUCT[2,]

# Question 9
dbRemoveTable(TinyClothesdb, 'NEWPRODUCT', NEWPRODUCT)

# Question 10
dbDisconnect(TinyClothesdb)