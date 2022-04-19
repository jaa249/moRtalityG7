library(tidyverse)
library(ggplot2)
library(rlang)

LT <- function(AgeGroup, Population, ExpectedDeaths, Deaths){

  AMR <- AMR(Population, ExpectedDeaths, 1000)
  CRUDE <- CRUDE(Population, Deaths, TRUE)
  SMR <- SMR(ExpectedDeaths, Deaths)


  DF = data.frame(AgeGroup, Population, ExpectedDeaths, Deaths, CRUDE, AMR, SMR)

  return(DF)
}
