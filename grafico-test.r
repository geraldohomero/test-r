install.packages("RSQLite")
library(RSQLite)
install.packages("ggplot2")
library(ggplot2)

con <- dbConnect(SQLite(), dbname="local_database.db")

sql <- readLines("dados.sql")

dbSendQuery(con, sql)

data <- dbGetQuery(con, "SELECT * FROM example_data")

dbDisconnect(con)

ggplot(data, aes(x, y)) + geom_line()
