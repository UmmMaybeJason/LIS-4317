# Module 10
library(ggplot2)
library(tidyverse)

hotdog <- read_csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv")
head(hotdog)
str(hotdog)

hotdogs <- hotdogs %>%
  mutate(Contestant_Year = paste(`Winner`, paste0("(", Year, ")"), sep = " ")) %>%
  arrange(desc(`Dogs eaten`))

hotdogs

ggplot(hotdogs, aes(x = reorder(Contestant_Year, `Dogs eaten`), y = `Dogs eaten`, fill = factor(`New record`))) +
  geom_bar(stat = "identity") +  
  scale_fill_manual(values = c("0" = "gold", "1" = "darkred"), 
                    labels = c("0" = "No", "1" = "Yes"),
                    name = "Record?") +
  labs(title = "Hotdog Eating Contest Results by Year",
       x = "Contestant / Year",
       y = "Hotdogs Eaten") +
  coord_flip()
  