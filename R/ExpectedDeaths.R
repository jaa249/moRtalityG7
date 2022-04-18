library(tidyverse)
library(ggplot2)
library(rlang)

ExpectedDeaths <- function(PreviousDeaths, Population){

  if (PreviousDeaths > Population){
    rlang::catch_cnd(abort(message = "Deaths are greater than Population! Check for errors in the data source!",
                           .subclass = "death_overflow"
    ))

  } else {

  (PreviousDeaths / Population)

  }
}
