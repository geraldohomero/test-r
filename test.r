library(ggplot2)

dados <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(2, 4, 3, 5, 1)
)

ggplot(dados, aes(x, y)) +
  geom_line()

print(ggplot(dados, aes(x, y)) + geom_line())
              