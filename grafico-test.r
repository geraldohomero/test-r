# Install and load the required packages
install.packages("RSQLite")
library(RSQLite)
install.packages("ggplot2")
library(ggplot2)

# Connect to the SQLite database
con <- dbConnect(SQLite(), dbname="local_database.db")

# Read the .sql file
sql <- readLines("dados.sql")

# Execute the .sql file
dbSendQuery(con, sql)

# Import the data into R
data <- dbGetQuery(con, "SELECT * FROM example_data")

# Close the connection
dbDisconnect(con)

# Create the line graph
ggplot(data, aes(x, y)) + geom_line()
