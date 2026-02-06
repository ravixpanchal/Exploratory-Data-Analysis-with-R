install.packages("fdth")
library(fdth)

time=c(32,35,45,83,74,55,68,38,35,55,66,65,42,
68,72,84,67,36,42,58)
library(fdth)
ft=fdt(time)
ft

ft1=fdt(time,start=30,end=90,h=10,right=F)
ft1

install.packages("MASS")
library(MASS)
colnames(painters)
painters$Composition

ftpaintcomp=fdt(painters$Composition)
ftpaintcomp

range(painters$Composition)
ftpaintcomp1=fdt(painters$Composition, start=0,end=18,h=3)
ftpaintcomp1

quali=c(1, 2, 1, 2, 1, 1, 1, 2, 1, 1) 
quali
barplot(quali)
table(quali)
barplot(table(quali))
barplot(table(quali)/length(quali))

salesper = c(1,1,2,1,2,3,2,2,3,3,3,1,2,3,2,2,3, 
1,1,3,3,1,2,1,3,3,3,2,2,2,2,1,2,2,1,1,1,3,2,2,
1,2,3,2,2,1,2,3,3,2,1,2,2,3,1,1,2,1,2,3,2,3,2,
2,3,1,2,3,3,3,2,1,1,1,2,1,1,2,1,2,3,3,1,2,3,3,
2,1,2,3,2,1,3,2,2,2,2,3,2,2)
barplot(salesper)
barplot(table(salesper))
barplot(table(salesper)/length(salesper))

barplot(table(salesper),main="Customers Attended by Sales persons")

 barplot(table(salesper), main = "Customers 
attended by sales persons", names.arg=c("SP 
1", "SP 2", "SP 3"), xlab = "Sales Persons 
(SP)", ylab = "Number of customers")


 barplot(table(salesper), main = "Customers 
attended by sales persons", names.arg=c("SP 
1", "SP 2", "SP 3"), xlab = "Sales Persons 
(SP)", ylab = "Number of customers",  col= 
c("red","green","orange"))

library(MASS)
colnames(painters)
painters$School
table(painters$School)
table(painters$School)/length(painters$School)
barplot(table(painters$School))

barplot(table(painters$School), main = "Schools of 
Painters in MASS", names.arg=c("A","B","C","D","E", 
"F","G", "H"), xlab = "Schools", ylab = "Number of 
Painters", col=c("red","green","orange","pink", 
"yellow","blue","grey","skyblue"))

cust=matrix(nrow = 4,ncol=3,data=c(2,20,30,26,53,40,42,15,25,30,75,100),byrow = T)
cust

barplot(cust)
barplot(cust, main="Bar Plot",xlab="Shops",ylab="Days",names.arg=c("Shop 1","Shop 2","Shop 3"),col=c("red","green","brown"))

 quali = c(1, 2, 1, 2, 1, 1, 1, 2, 1, 1)
quali
pie(quali)

table(pie)
pie(table(quali))

pie(table(quali), labels=c("Graduate","NonGraduate"), main="Persons with qualifications",col=c("red","blue"))

salesper = c(1,1,2,1,2,3,2,2,3,3,3,1,2,3,2,2,3, 
1,1,3,3,1,2,1,3,3,3,2,2,2,2,1,2,2,1,1,1,3,2,2,
1,2,3,2,2,1,2,3,3,2,1,2,2,3,1,1,2,1,2,3,2,3,2,
2,3,1,2,3,3,3,2,1,1,1,2,1,1,2,1,2,3,3,1,2,3,3,
2,1,2,3,2,1,3,2,2,2,2,3,2,2)
table(salesper)
pie(table(salesper))
pie(table(salesper), main="Salesperson attending customer", labels=c("SP 1","SP 2","SP 3"), col=c("green", "red","blue"))

library(MASS)
colnames(painters)
painters$School
table(painters$School)


table(painters$School)/length(painters$School)

pie(table(painters$School))
pie(table(painters$School), main = "Schools of 
Painters in MASS", xlab = "Schools", ylab = "Number 
of Painters", col=c("red","green","orange","pink", 
"yellow","blue","grey","skyblue"))

install.packages("plotrix")
library(plotrix)
quali = c(1, 2, 1, 2, 1, 1, 1, 2, 1, 1)
quali
pie3D(table(quali))
pie3D(table(quali), labels = c("Graduate", 
"Nongraduate"), main = "Persons with 
Qualification", col=c("red", "blue")) 

pie3D(table(quali), explode = 0.2, labels = 
c("Graduate", "Nongraduate"), main = "Persons 
with Qualification", col=c("red", "blue")) 

salesper = c(1,1,2,1,2,3,2,2,3,3,3,1,2,3,2,2,3, 
1,1,3,3,1,2,1,3,3,3,2,2,2,2,1,2,2,1,1,1,3,2,2,
1,2,3,2,2,1,2,3,3,2,1,2,2,3,1,1,2,1,2,3,2,3,2,
2,3,1,2,3,3,3,2,1,1,1,2,1,1,2,1,2,3,3,1,2,3,3,
2,1,2,3,2,1,3,2,2,2,2,3,2,2)

table(salesper)
pie3D(table(salesper))
pie3D(table(salesper), labels = c("SP1", "SP2", 
"SP3"), main = "Salespersons attending customer", 
col=c("green", "red", "blue"))
pie3D(table(salesper), explode = 0.3, 
labels = c("SP1", "SP2", "SP3"), main = 
"Salespersons attending customer", 
col=c("green", "red", "blue")) 

library(MASS)
colnames(painters)
painters$School
table(painters$School)
table(painters$School)/length(painters$School)
pie3D(table(painters$School), explode = 0.3, 
main = "Schools of Painters in MASS", labels 
=c("A","B","C","D","E", "F","G", "H"), 
col=c("red","green","orange","pink", 
"yellow","blue","grey","skyblue"))

dftreemap

install.packages("treemap")
library(treemap)
treemap(dftreemap, index = "state", vSize = 
"students")
data(business)
View(data)
treemap(business, index=c("NACE1", "NACE2", 
"NACE3"), vSize="turnover", type="index")


height = c(166,125,130,142,147,159,159,147, 
165,156,149,164,137,166,135,142,133,136,127,143,
165,121,142,148,158,146,154,157,124,125,158,159,
164,143,154,152,141,164,131,152,152,161,143,143,
139,131,125,145,140,163)
hist(height)
hist(height, main = "Heights of persons", 
col = "green", xlab = "Heights", ylab = 
"Number of Persons")

library(MASS)
colnames(painters)
painters$Expression
hist(painters$Expression)
height = c(166,125,130,142,147,159,159,147, 
165,156,149,164,137,166,135,142,133,136,127,143,
165,121,142,148,158,146,154,157,124,125,158,159,
164,143,154,152,141,164,131,152,152,161,143,143,
139,131,125,145,140,163)

plot(density(height))
 plot(density(height, 
adjust=0.5))
 plot(density(height, 
adjust=1))
 plot(density(height, 
adjust=1))
 plot(density(height, 
adjust=2))

plot(density(height, 
kernel='gaussian'))
plot(density(height, 
kernel='rectangular'))
plot(density(height, 
kernel='epanechnikov'))
plot(density(height, 
kernel='triangular'))

 defective = c(46, 24, 53, 44, 18, 34, 65, 54, 
66, 35, 48, 56, 73, 38, 49)
defective
stem(defective, scale = 2)
 hist(defective)
