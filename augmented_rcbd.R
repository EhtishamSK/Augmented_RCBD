###########################################################################
# Title       : Augmented RCBD Codes in R 
# Author      : Ehtisham Khokhar
# University  : New Mexico State University
# Email       : ehtishamshakeel@gmail.com 
# Purpose     : Perform ANOVA and GVA for augmented randomized complete
#               block designs (unbalanced), and generate summary reports
#
# Citation    : Aravind, J., Mukesh Sankar, S., Wankhede, D. P., and Kaur, V.
#               augmentedRCBD: Analysis of Augmented Randomised Complete Block
#               Designs. R package version 0.1.7.9000,
#               https://aravind-j.github.io/augmentedRCBD/
#               https://cran.r-project.org/package=augmentedRCBD
###########################################################################

install.packages("shiny")
install.packages("flextable")
install.packages("augmentedRCBD")
# Install from CRAN
install.packages('augmentedRCBD', dependencies=TRUE)
library(augmentedRCBD)
setwd("C:/Users/ehtis/OneDrive - New Mexico State University/SUNNY/Research Projects/Mechanical Harvest Paper/Phenotype manuscript/anova")
library(openxlsx)
library("readxl")
install.packages("readxl")
library(readxl)

mydata <- read_excel("mydata.xls", sheet = 1)
summary(mydata); table(!is.na(mydata))
str(mydata)
mydata$Block <- as.factor(mydata$Block)
mydata$Genotype <- as.factor(mydata$Genotype)
length(unique(mydata$Genotype)) # number of Genotypes
length(levels(mydata$Block)) # number of blocks
summary(mydata)
colnames(mydata)

ncol(mydata)
all_Trait <- as.character(colnames(unique(mydata[3:15])))

length(all_Trait)
length(unique(all_Trait))
options(max.print = 100000) 

aug_anova <-
  augmentedRCBD.bulk(
    data = mydata,
    block = "Block",
    treatment = "Genotype",
    traits = all_Trait,
    checks = NULL,
    alpha = 0.05,
    describe = TRUE,
    freqdist = TRUE,
    gva = TRUE,
    # check.col = c("brown", "forestgreen"),
    console = TRUE
  )


report.augmentedRCBD.bulk(aug_anova, file.path("C:/Users/ehtis/OneDrive - New Mexico State University/SUNNY/Research Projects/Mechanical Harvest Paper/Phenotype manuscript/anova", "Anova_new.docx"))
