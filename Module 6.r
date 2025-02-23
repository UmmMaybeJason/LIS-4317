library(ggplot2)

names <- c("Jeric", "Savannah", "Shenica", "Anika", "Tristan", "Anna", "Bria", "Karla", "Angelica", "Quang","Sarieli", "Mikayla", "Paige", "Ari", "Ben")
snipes <- c(64, 61, 38, 35, 27, 25, 24, 21, 20, 20, 19, 15, 15, 13, 13)
data <- data.frame(names, snipes)
print(data)

plot <- ggplot(data, aes(x = names, y = snipes, fill = snipes)) + 
  geom_col() + 
  coord_flip() +
  labs(title = "Dance Team Snipes", x = "Name", y = "Snipes") +
  scale_fill_gradient(low = "blue", high = "black")

# Code that does NOT use "ggplot2" package

barplot(data$snipes, 
        names.arg = data$names, 
        col = colors, 
        horiz = TRUE, 
        main = "Dance Team Snipes", 
        xlab = "Snipes", 
        ylab = "Name")


print(plot)
