library(tidyverse)
library(ggplot2)
library(rlang)

LT <- function(Population, ExpectedDeaths){

  AMR <- AMR(Population, ExpectedDeaths, 1000)
  CRUDE <- CRUDE(Population, Deaths, TRUE)
  SMR <- SMR(ExpectedDeaths, Deaths)

}

data.frame(AgeGroup, Population, ExpectedDeaths,Deaths, SMR, CRUDE, AMR)
