#Package Install (If not installed) - Remove # 
#install.packages("tidyverse")

#Loading libraries
library(tidyverse)


data("diamonds")
head(diamonds)

str(diamonds)

colnames(diamonds)

summarise(diamonds,mean_carat=mean(carat))

ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point() + facet_wrap(~cut)

mutate(diamonds, carat_normalised = carat*100)

as_tibble(diamonds)
