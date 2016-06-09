# Common options for all documents
library(knitr)
library(gridExtra)
library(countrycode)
library(readr)
library(dplyr)
library(ggplot2)
library(ggthemes)
library(reshape2)
opts_chunk$set(fig.retina = 2,
               fig.align = 'center',
               warning = F,
               message = F,
               fig.width=8,
               cache = T,
               fig.cap = T)
theme_set(
    theme_minimal() + 
        theme(panel.grid.minor = element_blank(),
              legend.position = "bottom",
              panel.background = element_rect(fill=NA, colour="grey50"))
    )
