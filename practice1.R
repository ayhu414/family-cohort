library(tidyverse)
attach(diamonds)
df <- diamonds
df %>% filter(clarity =="IF") %>% ggplot(aes(x=carat,y=price,color=color)) + geom_point() + geom_smooth(method = "lm") + labs(title="Correlation between price and carats", x="Carat") + theme_bw() +
  facet_wrap(~color)    #geom_point() is the type of plot; geom_smooth() gives you a LOBF; (method = "lm") makes it a linear; labs() creates labels; use lables to be readable to most readers
#theme_bw() makes it pretty by making it black and white (simply preferences); the first "color" is associated with ggplot(aes()), while the second "color" is associated with data in df
#notice that order does not matter for the addition stacking, but it does matter for the pipping stacking;
#facet chunks data by group, where (y~x), y charactoristic is the one that stacks on the y portion of the grid, and x charactoristic is the x portion of the grid


df %>%
  ggplot(aes(x=carat,y=price,color=color)) + 
  geom_point() + 
  geom_smooth(method = "lm") +
  facet_wrap(~clarity) +
  labs(x = "Carat",
       y = "Price",
       title = "Correlation between diamond carat and price") +
  theme_dark()

#facet grid locks the graphs to x and y, while wrap is more flexable 

(mean(c(6,5))
  #is the equivalent of 
  c(6,5) %>% mean()
  filter(select(df,price),price>5000)
  #is the same as 
  df %>% select(price) %>%
    filter(price > 5000)
  #and does not affect the data within df
  df2 <- df %>% select(price) %>%
    filter(price > 5000)
  #the "<-" assigns the values to a new df called df2
  #select data, specify aesthetics, specify plotting method, make it pretty
  #selecing rows: filter; selecting columbs: select;
  #LOBF is a type of plotting method