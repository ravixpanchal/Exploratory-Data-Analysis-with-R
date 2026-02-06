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
