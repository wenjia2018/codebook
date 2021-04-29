# create a explanatory file for our own created variables 
# import some from old version
library(tidyverse)
library(haven)
# original csv created
if(0){
  variable_MJ=readRDS(file = "/volumes/xu/idata/variable_MJ.rds")
  
  variable_MJ %>% 
    select(-2) %>% 
    rename(variable = `old variable name`,
           raw_variables = `variables used`) %>% 
    write_csv("./df.csv")

  
  }
# df.csv will be continuously updated
# massive increment will be done as following, a few entry could be done directly in df.csv.
if(0){
  increment = tribble(
    ~variable,  ~description, ~instruments, ~ raw_variables, ~detail,
      "sex_interv","sex of the interviewee", "wave 1", "BIO_SEX", "",
      "Plate", "assay plate", "wave 5", "", "QC data in quality.rds",
    "AvgCorrelogram100" ,"Intersample correlation-Average correlograms", "wave 5", "", "QC data in quality.rds",
    "age_w5", "interviewee's age at wave 5", "wave 1, 2, 3, 4,5","H1GI1Y,H2GI1Y,H3OD1Y,H4OD1Y,H5OD1Y,H1GI1M,H2GI1M,H3OD1M,H4OD1M,H5OD1M,IYEAR5, IMONTH5","survey time at wave 5 minus date of birth, date of birth is created using all year month information from w1 to w5",
      "BirthY","interviewee's birth year", "wave 1, 2, 3, 4,5","H1GI1Y,H2GI1Y,H3OD1Y,H4OD1Y,H5OD1Y", "all birth year information from w1 to w5",
      "pregnant_biow5","if the interviewee is pregnant or not","wave 5","Q012","is pregnant is defined as women and pregnant",
      "kit_biow5","assey sample kit condition","wave 5","KITCOND","originally stored in w5biocovars.sas7bdat",
      "tube_biow5","assey sample tub condition","wave 5","TUBECOND","originally stored in w5biocovars.sas7bdat",
      "FastHrs","fasting time before blood taken","wave 5","FastHrs","originally stored in w5biocovars.sas7bdat",
      "travel_biow5", "if traveled outside the United States","wave 5","Q016","originally stored in w5biocovars.sas7bdat",
    "months_biow5", "blood collection month","wave 5","EXAMDATE","originally stored in w5biocovars.sas7bdat",
    "time_biow5","blood collection time","wave 5","EXAMDATE","originally stored in w5biocovars.sas7bdat",
      "B.cells.naive", "cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
    "B.cells.memory", "cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
    "Plasma.cells","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
      "T.cells.CD8", "cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
    "T.cells.CD4.naive","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
    "T.cells.CD4.memory.resting","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
      "T.cells.CD4.memory.activated","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
      # "T.cells.follicular.helper","","","","",
      "T.cells.regulatory..Tregs.","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
    "T.cells.gamma.delta","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
      "NK.cells.resting", "cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
    "NK.cells.activated","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
    "Monocytes","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
    "Macrophages.M0", "cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
      # "Macrophages.M1","","","","",
      "Macrophages.M2","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
    "Dendritic.cells.resting","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
      "Dendritic.cells.activated","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
    "Mast.cells.resting","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
      # "Mast.cells.activated", "","","","",# not estimable in limma
      "Eosinophils","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv",
    "Neutrophils","cell type","","","cibersort from Brandt originally stored in CIBERSORT.Output_Job17.csv")
  temp = read.csv("./df.csv")
  temp = temp %>% add_row(increment) 
  temp %>% write_csv("./df.csv")
}


