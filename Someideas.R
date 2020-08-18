library(plotly)
library(googleVis)
library(dplyr)
library(tidyr)
library(ggplot2)

## Imagining different ways of showing student data

## Start by creating a short data frame of possible data

studentid <- rep(1:4, each = 10)
scores <- runif(40, min = 0.4, max = 0.95)
type <- rep(c("homework","homework","homework","homework","test","homework","test","Mock","homework","homework"),4)
type <- as.factor(type)

dates <- as.Date(c("09/01/19","09/11/19","09/17/19","09/30/19","10/05/19","10/28/19","11/01/19","11/12/19","11/17/19","12/01/19")
date <- rep(dates,4)

data <- dplyr::data_frame(studentid,scores,type,date)
data$studentid <- as.factor(data$studentid)

plot_ly(data, x = date, y = scores, color = as.factor(studentid), alpha = 0.5)
