\name{moRtality}
\alias{moRtality}
\title{Epidemiological Research Tools for Mortality}
\usage{
AMR()
CRUDE()
LT()
SMR()
}
\description{
Calculates the adjusted and unadjusted mortality rates. Creates a life table
using provided data.

To test the package, use the sample dataframes:

"HMD_1993"
"HMD_2017"

}
\examples{
Adjusted Mortality Rate:

AMR(Population = 1000000, Deaths = 5050, perPopulation = 100000)
or
AMR(HMD_2017$Population,HMD_2017$mortalitycount)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Crude/Unajusted Mortality Rate:

CRUDE(Population = 200000, Deaths = 4564, Rate = FALSE)
or
Crude(200000,4564,True)

*Note: A missing Rate or False rate will result in a percentage.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Standard Mortality Rate:

SMR(ExpectedDeaths = 10000, Deaths = 700)
or
SMR(HMD_1933$mortalitycount,HMD_2017$mortalitycount)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Life Table:

LT(AgeGroup = Age, Population = Population, ExpectedDeaths = PreviousDeaths,
Deaths = CurrentDeaths, perPopulation = 1000)
or
LT(HMD_2017$Age,HMD_2017$Total1,HMD_1933$mortalitycount,
   HMD_2017t$mortalitycount, 10000)

*Note: perPopulation and ExpectedDeaths are optional.
       perPopulation will default to 1000 if left blank.
       Missing ExpectedDeaths will not produce SMR in dataframe.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}

