datamunich <- read.table("http://home.iitk.ac.in/~shalab/Rcourse/munichdata.asc", header = TRUE)


#Read the csv file
datacsv=read.csv("example.csv", header = TRUE)
datacsv

names(datacsv)

datacsv$Name
datacsv$City
datacsv$Age.In.Years.
datacsv$Salary..In.thousand.INR.


#Rename the columns
names(datacsv)
names(datacsv)=c("name","city","age","salaries")
head(datacsv)


#Read the text data
datatxt = read.table("example.txt", header = TRUE, sep = "*")
datatxt
names(datatxt)

#Import Excel file data
install.packages("readxl")
library(readxl)

dataexcel=read_excel("example.xlsx")
names(dataexcel)
dataexcel$Name
dataexcel$City
dataexcel$"Age(In Years)"
dataexcel$"Salary (In Thousand INR)"

#Limit the no of rows data
read_excel("example.xlsx",n_max = 3)


#Using Range Function