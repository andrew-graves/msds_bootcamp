# remotes::install_github("allisonhorst/palmerpenguins")

library(palmerpenguins)

data(penguins)

penguins %>% 
  drop_na() %>%
  ggplot(aes(flipper_length_mm, body_mass_g, 
             color = species, fill = species)) +
  geom_point() +
  geom_smooth(method = "lm", 
              formula = "y ~ x") + 
  scale_color_brewer(palette = "Dark2") + 
  scale_fill_brewer(palette = "Dark2") + 
  labs(x = "Flipper Length (mm)", y = "Body Mass (g)",
       title = "Flipper length is positively correlated with body mass") +
  theme_classic()