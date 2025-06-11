# Load packages -----------------------------------------------------------

library(tidyverse)


# Load data ---------------------------------------------------------------

tuesdata <- tidytuesdayR::tt_load(date_chr)


# Data wrangling ----------------------------------------------------------

plot_data


# Write CSV ---------------------------------------------------------------

readr::write_csv(
  plot_data,
  file.path(yr, date_chr, "data.csv")
)
