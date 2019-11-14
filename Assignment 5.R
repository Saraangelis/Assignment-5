############################################################
# R script for Assignment 5 Bis 044                        #
# Written by Sara Sanchez-Rivera                           #
############################################################

## let's empty Environment
## and clean up Console
# Clean Up 
rm(list=ls(all=TRUE))
cat("\014") 

## Reading in external data
## Prior to attempting this section, download file
## "UNRATE.csv" from FRED database
## and store it in working directory for this project.
getwd()

# Also, edit the .gitignore file (if necessary) to exclude
# *.csv and *.RData files from being synced by Git. 
file.edit(".gitignore")


## Reading in our csv file using fread() from package data.table 
# Installing data.table (if required) and loading it into memory
if (!require("data.table")) install.packages("data.table")
library("data.table")

DF <- fread("UNRATE.csv", header="auto", 
            data.table=FALSE)

