library(tidyverse)
library(ggplot2)
library(rlang)


CRUDE <- function(Population, Deaths, Rate){

  if (sum(Deaths > Population)==length(Deaths)){
    rlang::catch_cnd(abort(message = "Deaths are greater than Population At Risk! Check for errors in the data source!",
                           .subclass = "death_overflow"
    ))

  } else {
    if (missing(Rate) || Rate ==  FALSE){
      (Deaths / (Population)) * 100
     } else {
       if (Rate == TRUE){
       (Deaths / (Population))
       }
      }
    }
  }

