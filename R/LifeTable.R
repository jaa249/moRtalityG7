library(tidyverse)
library(ggplot2)
library(rlang)


LT <- function(AgeGroup, Population, Deaths, perPopulation, ExpectedDeaths){

  if (missing(ExpectedDeaths)){
    SMR = 0
  } else {

    SMR <- SMR(ExpectedDeaths, Deaths)
  }

  AMR <- AMR(Population, Deaths, perPopulation)
  CRUDE_Rate <- CRUDE(Population, Deaths, TRUE)

  if (SMR == 0){

    DF1 = data.frame(AgeGroup, Population, Deaths, CRUDE_Rate, AMR)

    return(DF1)

  } else {

    DF = data.frame(AgeGroup, Population, ExpectedDeaths, Deaths, CRUDE_Rate, AMR, SMR)

    return(DF)
  }

}

