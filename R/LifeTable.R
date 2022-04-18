library(tidyverse)
library(ggplot2)
library(rlang)

DF <- ASMRdata

LT <- function(AgeGroup, Population, PreviousDeaths, Deaths){

  invisible(AMR)
  invisible(CRUDE)
  invisible(SMR)

  ggplot(DF, aes(x = AgeGroup, y =  AMR)) +
    geom_point() +
    labs(subtitle="Line Plot",
         y="Adjusted Mortality Rate",
         x="Age Group",
         title="Age Group v. Adjusted Mortality Rate")

}

LT(ASMRdata$Age,ASMRdata$Total1, ASMRdata$Total2,mortalitydata$Deaths)
