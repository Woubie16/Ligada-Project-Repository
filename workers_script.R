#Installing data.table package inorder to input data
install.packages("data.table")
library(data.table)
#Installing Rmarkdown package
install.packages("rmarkdown")
library (rmarkdown)
#Installing rsconnect 
if (!require("devtools"))
install.packages("devtools")
devtools::install_github("rstudio/rsconnect")
update.packages("rsconnect")

#setting working director
setwd("//ukfs03//Users/walemayehu/My Documents/GitHub/My-Project")
#Importing the dataset - local- workers
workers <- fread("workers_1_data.csv",header = TRUE, drop=c("first_name", "last_name","email", "phone"))

#Importing data using read.csv
#workers <- read.csv("//ukfs03/Users/walemayehu/My Documents/Ligada/workers_1_data.csv", header=TRUE, sep=",", stringsAsFactors = FALSE)

#Changing the following variables to factors 
workers$experience_name <- as.factor(workers$experience_name)
workers$education_name <- as.factor(workers$education_name)
workers$district_name <- as.factor(workers$district_name)
workers$province_name <- as.factor(workers$province_name)
workers$profession_name <- as.factor(workers$profession_name)
workers$user_status <- as.factor(workers$user_status)

#Summary Analysis

summary(workers$price_score)
summary(workers$quality_score)

plot(workers$education_name, main="Education Level of Workers", xlab="Education Level", ylab="Number of People")
plot(workers$experience_name, main="Years of Work", xlab="Number of Year of Work Experience Level", ylab="Number of People")
plot(workers$quality_score, workers$price_score)