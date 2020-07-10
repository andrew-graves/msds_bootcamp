library(tidyverse)
library(lubridate)

covid_dat <- read_csv("owid-covid-data.csv") %>%
  select(iso_code:date, total_cases_per_million) %>%
  mutate(date = mdy(date)) %>%
  filter(date <= as_date("2020-05-08") & 
         date >= as_date("2020-01-20"))

loc_fig1 <- c("United States", "United Kingdom", 
              "World", "South Korea", "China")

titles <- c("Total confirmed COVID-19 cases per million people",
            paste("The number of confirmed cases is lower than the",
                  "number of total cases. The main reason for this",
                  "is limited testing.")
  )

hex <- RColorBrewer::brewer.pal(n = length(loc_fig1), name = "Set1")
hex_colors <- hex[c(4, 5, 3, 1, 2)]

date_breaks <- paste0("2020-", 
                      c("01-22", "03-01", "04-10", "05-08")) %>%
  as_date()
date_labels <- paste0(c("Jan 22", "Mar 1", "Apr 10", "May 8"), ", 2020")

covid_dat %>%
  filter(location %in% loc_fig1) %>%
  mutate(location = fct_relevel(
                      as_factor(location), loc_fig1)
         ) %>%
  ggplot(aes(x = date, y = total_cases_per_million, 
             color = location)) + 
  geom_line() + 
  scale_x_continuous(breaks = date_breaks,
                     labels = date_labels) +
  scale_y_log10(n.breaks = 6,
    labels = function(x) sprintf("%g", x)) +
  scale_color_manual(values = hex_colors) +
  labs(x = "", y = "", 
       title = titles[1], subtitle = titles[2]) +
  theme_classic()
