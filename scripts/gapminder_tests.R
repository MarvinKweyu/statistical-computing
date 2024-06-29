library(tidyverse)
library(patchwork)
library(gapminder)

# performing t-test
one_way <- gapminder |> 
  filter(continent == 'Africa') |> 
  select(lifeExp) |> 
  t.test(mu=50)
one_way