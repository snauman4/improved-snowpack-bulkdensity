# package load function
packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

packages <- c("tidyverse", "rmarkdown",
              "ggthemes","RColorBrewer","viridis","ggdark","plotly",
              "lterdatasampler", "rstatix", "lubridate",
              "purrr", "httr", "jsonlite", "dataRetrieval",
              "DT","shinydashboard", "leaflet", "snotelr", "dplyr")

# load in packages
packageLoad(packages)