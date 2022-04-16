\name{moRtality}
\alias{moRtality}
\title{Epidemiological Research Tools for Mortality}
\usage{
AMR()
CRUDE()
LT()
}
\description{
Calculates the adjusted and unadjusted mortality rates. Creates a life table using provided data.
}
\examples{
Adjusted Mortality Rate:

AMR(Population = 1000000, ExpectedDeaths = 5050, perPopulation = 100000)
or
AMR(1000000,5050)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Crude/Unajusted Mortality Rate:

CRUDE(PopulationAtRisk = 200000, Deaths = 4564, Rate = FALSE)
or
Crude(200000,4564,True)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Life Table:

LT()
or
LT()


}
