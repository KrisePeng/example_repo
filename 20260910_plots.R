## 2026-09-10
## Yan Peng
## this is code from building blocks in class

library(tidyverse)

4+2

## variable assignment

x = (17 * 3 + 2) ^ 2

## functions
## fix random number
set.seed(1)

## generate random number 
x = runif(10)

y = c(1,10)


mean(x)
sd(x)

x + y

## ask R some questions

?runif
?mean


## data frames!!!

example_df =
   tibble(
     ## vec_numeric = 1:4,
     vec_numeric = c(1,2,3,4),
     vec_char = c("my","name","is","yan"),
     vec_logical = c(TRUE, TRUE, FALSE,TRUE),
     vec_factor = factor(c("male","male","female","female"))
     ## factor() force R recognize the type of data as categories instead of string.
   )

## make a plot !!

set.seed(1)

plot_df = 
  tibble(
    x = rnorm(1000,sd = 0.5),
    y = 1 + 2 * x + rnorm(1000) 
  )


## start with a histogram

ggplot(plot_df, aes(x = x)) + geom_histogram()

ggplot(plot_df, aes(x = x, y = y) ) + geom_point()

ggsave("scatterplot.png")

