# Module 8 (LIS 4317)

library("ggplot2")
library("dplyr")

head(airquality)

airquality <- airquality %>%
  mutate(DayOfYear = as.Date(paste(1973, Month, Day, sep = "-")))

ggplot(airquality, aes(x = DayOfYear, y = Temp)) +
  geom_point(aes(color = Wind, size = Solar.R), alpha = 0.7) +
  geom_smooth(method = "lm") +
  labs(x = "Day of Year", y = "Temperature") +
  scale_color_gradient(low = "blue", high = "yellow")

model <- lm(Temp ~ DayOfYear + Wind + Solar.R, data = airquality)
summary(model)       
