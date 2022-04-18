library(tidyverse)
library(ggplot2)
library(rlang)

SMR <- function(ExpectedDeaths, Deaths){

  if (ExpectedDeaths < 0 || Deaths < 0){
    rlang::catch_cnd(abort(message = "Negative values detected. Check for errors in the data source!",
                           .subclass = "negative_detected"
    ))
  } else {

  (Deaths / ExpectedDeaths)

  }
}
