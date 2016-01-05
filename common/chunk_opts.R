# Document information:
# Created with knitrBootsrap (https://github.com/jimhester/knitrBootstrap)
# install_github('jimhester/knitrBootstrap')
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
               comment = "#",
               warning = F,
               message = F,
               fig.width=8,
               cache = T,
               bootstrap.thumbnail.size = 'col-md-6',
               bootstrap.panel = FALSE)
# options(digits = 2)
theme_set(
    theme_minimal() + 
        theme(panel.grid.minor = element_blank(),
              legend.position = "bottom"))