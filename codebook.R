#' ---
#' title: code book for created variables
#' date: "`r format(Sys.time(), '%d %B, %Y')`"
#' output:
#'    html_document:
#'      toc: true
#'      highlight: zenburn
#' ---
#' <!-- rmarkdown::render("supervised_play/nice_code.R") -->
#' <!-- [See here.](http://brooksandrew.github.io/simpleblog/articles/render-reports-directly-from-R-scripts/) -->
#+ warning=FALSE, message=FALSE

#+ echo=F, eval=T, warning=FALSE, message=FALSE
library(tidyverse)
library(haven)
library(summarytools)
library(codebook)
dat <- readRDS("/Volumes/share/preprocessed_two_batches/dt_batches1_2_steve_waves_22.03.2021.rds")

temp = read.csv("./df.csv")
temp %>% kableExtra::kable() %>% kableExtra::kable_styling()

dt = pData(dat) %>% select(temp$variable)

print(dfSummary(dt, style = 'grid', plain.ascii = FALSE, graph.magnif = 0.85), method = 'render', headings = FALSE)
# codebook(dt,survey_overview = F, missingness_report = F, metadata_table = F, metadata_json = F, indent = "#")