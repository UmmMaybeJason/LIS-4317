# Module 7
data(mtcars)

random_cars <- mtcars %>%
  sample_n(10)

random_cars_df <- data.frame(
  car = rownames(random_cars),
  mpg = random_cars$mpg
)

random_cars_df$car <- factor(random_cars_df$car)

ggplot(random_cars_df, aes(x = car, y = mpg)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "MPG for 10 Random Cars from mtcars") +
  theme(axis.text.x = element_text(angle = 90))
