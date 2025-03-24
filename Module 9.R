# Module 9 Assignment

library("ggplot2")
library("dplyr")

head(airquality)

airquality_clean <- na.omit(airquality)

ggplot(airquality_clean, aes(x = Temp, y = Ozone, color = as.factor(Month), size = Wind)) +
  geom_point() +
  geom_smooth(method = "lm", color = "black") + 
  labs(tite = "Ozone Levels vs. Temperature")
