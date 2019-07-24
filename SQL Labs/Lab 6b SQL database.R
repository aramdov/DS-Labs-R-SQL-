
### Lab 6b Question 1-5 SQL

# Load the packages
library(DBI)
library(RSQLite)
library(sqldf)

PSTAT10db <- dbConnect(RSQLite::SQLite(), "my-db.sqlite")

dbWriteTable(PSTAT10db, "mtcars", mtcars)
dbWriteTable(PSTAT10db, "iris", iris)

dbListTables(PSTAT10db)
