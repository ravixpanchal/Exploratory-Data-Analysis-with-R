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

time=c(25.4, 44.3, 44.2, 23.8, 49.3, 37.3, 44.4, 20.5, 25.4, 42.4, 23.4, 32.3, 28.7, 29.5, 26.8, 41.7, 24.4, 36.3, 25.8, 41.8, 42.9, 46.9, 41.2, 44.0, 29.9, 39.9, 45.7, 41.6, 22.9, 29.6, 22.6, 37.0, 48.9, 37.9, 23.7, 47.5, 49.3, 47.6, 32.8, 42.6, 37.9, 26.3, 45.7, 43.0, 28.0, 39.5, 40.6, 43.6, 26.1, 30.5, 25.9, 38.2, 34.4, 27.8, 33.9, 32.7, 21.3, 35.1, 24.3, 33.0, 39.7, 49.8, 34.1, 35.5, 47.7, 29.3, 42.5, 40.4, 45.3, 37.0, 31.3, 25.2, 44.0, 32.9, 24.0, 32.6, 44.7, 23.1, 33.7, 32.4, 45.1, 28.2, 24.1, 45.9, 44.3, 34.0, 23.5, 32.9, 41.0, 23.2, 30.9, 39.3, 44.3, 30.0, 46.8, 20.7, 37.5, 43.3, 29.4, 44.2, 34.1, 49.9, 41.8, 32.5, 44.9, 20.4, 47.6, 35.7, 25.4, 48.8, 20.6, 22.3, 29.0, 24.8, 37.8, 35.6, 24.9, 45.0, 21.4, 23.7, 43.8, 38.5, 32.4, 21.1, 38.2, 33.8, 38.8, 26.1, 20.3, 49.6, 20.4, 22.9, 40.8, 45.7, 22.4, 36.8, 21.3, 42.9, 42.6, 48.8, 20.6, 27.1, 27.4, 47.2, 22.4, 42.3, 24.2, 47.9, 48.6, 47.9)

breaks=seq(20,50,by=4)
time.cut=cut(time,breaks,right=FALSE)
table(time.cut)


page=c(12, 16, 11, 17, 7, 9, 8, 7, 5, 13, 8, 10, 7, 13, 7, 4, 13, 9, 5, 13, 11, 15, 13, 11, 14, 5, 13, 8, 4, 7, 13, 11, 12, 15, 12, 10, 13, 15, 7, 14, 9, 13, 7, 12, 5, 15, 15, 8, 10, 10, 14, 10, 9, 13, 13, 10, 13, 9, 6, 6, 7, 10, 13, 5, 9, 7, 5, 12, 13, 8, 15, 11, 11, 13, 13, 5, 7, 14, 10, 14, 4, 5, 11, 13, 8, 4, 8, 9, 11, 9, 7, 14, 13, 14, 12, 5, 13, 8, 15, 14)

#Sum less than 10
sum(page<10)
sum(page>=14)
sum(page>=6 & page<=10)
sum(page%%4==0)

#Absolute difference
sum1=sum(page%%5==0)
sum2=sum(page%%4==0)
abs(sum1-sum2)
breaks=seq(1,17,by=4)
page.cut=cut(page,breaks,right=FALSE)
table(page.cut)
