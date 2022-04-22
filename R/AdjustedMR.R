library(tidyverse)
library(ggplot2)
library(rlang)

AMR <- function(Population, Deaths, perPopulation){

  if (Deaths > Population){
    rlang::catch_cnd(abort(message = "Expected deaths are greater than Population! Check for errors in the data source!",
                           .subclass = "death_overflow"
                           ))

  } else {
    if (missing(perPopulation)){
      perPopulation = 1000
    }
    (Deaths / (Population)) * perPopulation
  }
}
