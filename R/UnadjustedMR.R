

CRUDE <- function(Population, Deaths, Rate){

  if (Deaths > PopulationAtRisk){
    rlang::catch_cnd(abort(message = "Deaths are greater than Population At Risk! Check for errors in the data source!",
                           .subclass = "death_overflow"
    ))

  } else {
    if (missing(Rate) || Rate ==  FALSE){
      (Deaths / (PopulationAtRisk)) * 100
     } else {
       if (Rate == TRUE){
       (Deaths / (PopulationAtRisk))
       }
      }
    }
  }
