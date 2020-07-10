library(tidyverse)

read_csv("data/andre.csv") %>%
  filter(Year != 1976, Year < 1994) %>%
  ggplot(aes(H)) + 
  geom_histogram()

ggsave("output/recreate_plot.png", scale = 0.5)
