# Module 7
library("ggplot2")
library("dplyr")

honda_toyota <- mtcars %>%
  filter(brand == "Honda" | brand == "Toyota") %>%
  group_by(brand) %>%
  summarise(avg_mpg = mean(mpg, na.rm = TRUE))

mtcars$brand <- rownames(mtcars)

honda_toyota <- mtcars[mtcars$brand %in% c("Honda Civic", "Honda Accord", "Toyota Corolla", "Toyota Camry"), ]

avg_mpg <- aggregate(mpg ~ brand, data = honda_toyota, FUN = mean)

ggplot(avg_mpg, aes(x = brand, y = mpg, fill = brand)) +
  geom_bar(stat = "identity") +
  labs(title = "Average MPG of Honda vs Toyota Cars",
       x = "Car Brand",
       y = "Average MPG")
