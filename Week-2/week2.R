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

#Absolute and Relative frequencies
result=c(1,2,1,2,2,1,1,2,1,1)
result

table(result) #Absolute frequency
table(result)/length(result) #relative frequency

#Example
library(MASS)
colnames(painters)
painters$School

table(painters$School) #Absolute frequency
table(painters$School)/length(painters$School) #Relative frequency

#Cumulative frequency
result=c(1,2,1,2,2,1,1,2,1,1)
table(result)

cumsum(table(result)) #cumulative frequency (less than type)

#Example
library(MASS)
table(painters$School)
cumsum(table(painters$School)) #absolute frequency
cumsum(table(painters$School)/length(painters$School)) #relative frequency

#frequency distribution
time=c(32,35,45,83,74,55,68,38,35,55,66,65,42,68,72,84,67,36,42,58)
time
range(time) #find the min and max value
breaks=seq(30,90,by=10) #seq at interval of 10 integers
time.cut=cut(time,breaks,right=FALSE)
time.cut
table(time.cut)
cbind(table(time.cut))
table(time.cut)/length(time.cut)
cbind(table(time.cut)/length(time.cut))
cumsum(table(time.cut))
cbind(cumsum(table(time.cut)))
cumsum(table(time.cut)/length(time.cut))
cbind(cumsum(table(time.cut)/length(time.cut)))
