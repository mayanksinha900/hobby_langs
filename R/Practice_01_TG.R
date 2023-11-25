library(tidyverse)
data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth,dose == 0.5)
filtered_tg

arrange(filter(ToothGrowth,dose == 0.5), len)

filtered_tg_2 <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len)

filtered_tg_2

tg_filter_mean <- ToothGrowth %>% 
  filter(dose == 0.5) %>%
  group_by(supp) %>% 
  summarise(mean_len = mean(len))

tg_filter_mean
