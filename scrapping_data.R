library(tidyverse)
library(rvest)

## Simple example
# Read PBP table from basketball-reference.com
link2 <- 'https://www.basketball-reference.com/boxscores/pbp/202205260GSW.html'

read_html(link2) # read link using read_html

scrap_data <- 
  read_html(link2) %>%
  html_nodes("#all_pbp") %>%
  html_table()

scrap_data

data_new <- data.frame(scrap_data)                         # Duplicate data frame
colnames(data_new) <- data_new[1, ]          # Convert first row to header
head(data_new[-1,])                                 # Print updated data frame


write.csv(x=data_new[-1,], file="Dallas_vs_gsw_series_game5.csv") # saving the scrapped table

df <- data.frame(scrap_data)

head(df)

#save(df, file = "G:\\GLM\\df.csv")

#link <- "https://www.nba.com/game/dal-vs-gsw-0042100311/play-by-play"

#link1 <- "https://www.espn.com/nba/playbyplay/_/gameId/401434111"
# read table


# library(readr)
# typeof(parse_character(data))
# a <- parse_number(data)
# 
# a$expected
# 
# data_df <- data.frame(scrap_data)
# 
# dim(data_df)
# 
# option <- remDr$findElement(using = "css selector", ".large-4 table")
# positionen <- option$getElementText() %>% unlist
# 
#   
# 
# read_html(link1)


