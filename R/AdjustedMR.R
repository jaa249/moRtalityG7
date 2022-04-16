library(tidyverse)
library(ggplot2)
library(rlang)

AMR <- function(Population, ExpectedDeaths, perPopulation){

  if (ExpectedDeaths > Population){
    rlang::catch_cnd(abort(message = "Expected deaths is greater than Population",
                           ))
  } else {
    if (missing(perPopulation)){
      perPopulation = 1000
    }
    (ExpectedDeaths / (Population)) * perPopulation
  }

}
