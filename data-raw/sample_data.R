library(usethis)
library(readr)

HMD_1933 <- read_csv("R/HMD_1933.csv")
HMD_2017 <- read_csv("R/HMD_2017.csv")

usethis::use_data(HMD_1933, compress = "xz")
usethis::use_data(HMD_2017, compress = "xz")
