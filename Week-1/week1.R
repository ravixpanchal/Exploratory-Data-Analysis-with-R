#Assign the values
x=10
y=2*x
z=y-x


#Comment
#x=20

#Combine multiple values in one variable:- vector
y=c(1,2,3,4,5)

2+6 #Addition
2*6 #Multiplication
2/6 #Division
2-6 #Subtraction

2^3 #power
3**3 #power

3**0.5 #sqrt(3)
3^0.5 #sqrt(3)

#Add two vector
c(2,3,4,5)+c(6,7,8)

#power
c(3,4,5,6)^c(2,3)

#Numerical
x=c(2,3,4,5)
z=sum(x^2)-length(x)*mean(x)^2

#Cross Product
x1=c(2,3,4,5)
x2=c(6,7,8,9)

z=sum(x1*x2)

#Missing data
x=c(10,NA,30,40)
is.na(x)

x=c(10,NA,NA,NA,50)
is.na(x)


#Work with missing data
x=c(10,20,NA,40)
mean(x, na.rm=TRUE)

#create a matrix 4*2
x=matrix(nrow = 4,ncol = 2,data=c(1,2,3,4,5,6,7,8)) #column wise traversal
x=matrix(nrow = 4,ncol = 2,data=c(1,2,3,4,5,6,7,8),byrow = TRUE) #row wise traversal

#Transpose of a matrix
print("Transpose of a Matrix:) ")
x=matrix(nrow = 4,ncol = 2,data=c(1,2,3,4,5,6,7,8),byrow = FALSE)
xt=t(x)
xt


#Matrix Multiplication
y=matrix(nrow = 2,ncol = 2,data=c(1,2,3,4),byrow = T)
z=matrix(nrow = 2,ncol = 2,data=c(5,6,7,8),byrow = T)

z=y%*%z