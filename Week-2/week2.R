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

read_excel("", range="R1C2:R2C5")

#Limit the no of rows data
read_excel("example.xlsx",n_max = 3)



#Using Range Function
#1. create matrix
mat<- matrix(1:12, nrow=3, byrow=TRUE)

#2. print
print(matrix)

#3. R1C3
value<-mat[1,3]
cat("Value at R1C3 : ", value)

dataxls=read_excel("example.xlsx", sheet = 1)
dataxls

install.packages("readxl")
library(readxl)

#Dataframe
library(MASS)
painters
rownames(painters)
colnames(painters)

#Dtatframe many more functions
is.numeric(painters$School)
is.numeric(painters$Drawing)
is.factor(painters$School)
is.factor(painters$Drawing)

#Extract the info from the column
painters$School
painters["Da Udine","Composition"]

#Subset command
subset(painters, School=="F")

#Remove the columns
subset(painters, School=="F", select=c(-3,-5))

#Split
splitted=split(painters,painters$School)
