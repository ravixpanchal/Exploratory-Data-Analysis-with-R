time = c(32, 35, 45, 83, 74, 55, 68, 38, 35, 55, 
66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
time
sd(time)/mean(time)
sqrt(var(time))/mean(time)

# Coefficient of Variance
 time.na = c(NA, NA, 45, 83, 74, 55, 68, 38, 35,
55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
time.na
sd(time.na, na.rm = T)/mean(time.na, na.rm=T)
sqrt(var(time.na, na.rm=T))/mean(time.na, na.rm=T)

#Summary
time = c(32, 35, 45, 83, 74, 55, 68, 38, 35, 
55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
summary(time)


time=c(24.33, 37.65, 33.39, 20.05, 8.00, 10.59, 30.22, 33.95, 21.07, 28.37, 37.83, 15.89, 13.51, 35.98, 35.68, 22.75, 13.08, 27.23, 5.56, 42.74, 33.75, 33.97, 28.41, 49.52, 30.35, 41.97, 36.68, 42.80, 48.40, 5.15, 27.36, 8.00, 16.14, 25.13, 23.69, 34.43, 6.71, 39.55, 9.77, 15.72, 19.33, 9.51, 22.56, 37.48, 48.83, 23.27, 27.59, 15.44, 18.39, 47.18, 30.25, 16.99, 14.10, 44.26, 12.87, 21.18, 38.94, 7.17, 23.18, 39.66, 49.16, 38.10, 31.30, 16.34, 18.81, 31.02,5.65, 45.45, 5.61, 49.05, 38.96, 24.65, 19.98, 25.74, 41.72, 19.38, 39.92, 44.54, 25.89, 29.97, 24.63, 12.14, 19.46, 11.83, 14.70, 24.91, 11.18, 47.65, 22.79, 37.26, 12.12, 12.71, 47.51, 44.53, 47.93, 19.51, 8.71, 21.03, 49.31, 44.53, 38.81, 23.09, 47.28, 12.33, 41.96, 40.19, 35.83, 23.79, 7.45, 48.14, 11.90, 11.91, 33.56, 30.05, 31.32, 31.49, 30.29, 47.88, 22.93, 35.93, 10.58, 37.78, 25.04, 7.18, 34.71, 46.66, 18.18, 29.62, 37.03, 10.21, 21.84, 36.87, 15.67, 42.33, 30.54, 48.54, 18.71, 44.29, 35.84, 33.76, 24.60, 16.36, 29.72, 14.15, 47.40, 43.63, 18.41, 13.85, 32.88, 17.84, 21.99, 16.54, 27.06, 37.57, 38.49, 11.90, 27.62, 28.76, 45.04, 11.60, 14.08, 25.62, 34.12, 44.69, 32.22, 19.69, 28.60, 7.68, 7.40, 29.36, 9.53, 32.91, 11.94, 23.14, 38.65, 11.48, 49.12, 28.72, 33.14, 25.43, 44.20, 5.30, 45.00, 11.96, 26.72, 12.40, 22.55, 44.25, 17.34, 26.97, 14.39, 45.05, 41.25, 18.06, 21.09, 32.69, 9.24, 49.08, 22.71, 6.28, 38.02, 9.72, 40.90, 35.56, 44.88, 39.02, 5.35, 26.95, 44.53, 23.12, 16.63, 5.78, 12.34, 43.15, 36.99, 22.73, 16.00, 13.14, 7.45, 47.00, 40.17, 24.87, 25.97, 7.53, 43.71, 18.52, 44.19, 7.32, 8.40, 7.91, 21.16, 32.85, 37.98, 43.09, 45.41, 15.99, 36.51, 47.30, 22.57, 16.12, 29.12, 36.88, 12.92, 46.85, 31.74, 43.22, 23.71, 46.81, 45.61, 48.16, 49.81, 27.91, 42.71, 19.28, 38.50, 25.35, 38.40, 14.79, 9.66, 15.14, 38.19, 47.38, 12.12, 30.37, 5.92, 44.74, 47.79, 47.65, 15.66, 16.72, 11.01, 14.07, 47.87, 23.57, 11.11, 18.23, 19.16, 25.30, 44.73, 45.39, 38.08, 25.05, 6.43, 43.51, 27.69, 35.68, 42.71, 17.05, 16.49, 40.51, 29.96, 35.82, 49.09, 47.72, 24.33, 23.38, 26.59, 41.30, 19.96, 31.14)
time
max(time)-min(time)

#boxplot
time = c(32, 35, 45, 83, 74, 55, 68, 38, 35, 
55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
time
boxplot(time)

time1 = c(320, 350, 45, 83, 74, 55, 68, 38, 
35, 55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 
58)
boxplot(time1)

boxplot(data.frame(time,time1))

marks1 = c(9,27,33,16,32,39,48,25,11,13)
marks2 = c(10,17,26,32,37,43,48,29,45,2)

boxplot(data.frame(marks1, marks2))

marks1 = c(9,27,33,16,32,39,48,25,11,13)
namea=rep("A", times=10)
datatimea=data.frame(namea, marks1)
library(ggplot2)

ggplot(datatimea, aes(x=namea , y=marks1, fill=namea))+geom_boxplot()+labs(title="Marks of Students with no extreme observations")

marks1 = c(9,27,33,16,32,39,48,25,11,13)
namea= rep("A", times=10)
marks2 = c(10,17,26,32,37,43,48,29,45,100)
nameb= rep("B", times=10)
nameab = c(namea, nameb)
marks12 = c(marks1, marks2)
datatimeab = data.frame(nameab, marks12)

ggplot(datatimeab, aes(x=nameab, y=marks12, fill=nameab))+geom_boxplot()+labs(title="Marks of students at extream and without any observation")

marks1 = c(9,27,33,16,32,39,48,25,11,13)
namea=rep("A", times=10)
datatimea=data.frame(namea, marks1)

ggplot(datatimea, aes(x=namea, y=marks1, fill=namea))+geom_violin()+labs(title="Marks of Students without any observations")

marks1 = c(9,27,33,16,32,39,48,25,11,13)
namea= rep("A", times=10)
marks2 = c(10,17,26,32,37,43,48,29,45,100)
nameb= rep("B", times=10)
nameab = c(namea, nameb)
marks12 = c(marks1, marks2)
datatimeab = data.frame(nameab, marks12)
ggplot(datatimeab, aes(x=nameab, y=marks12, 
fill=nameab)) + geom_violin() + labs(title = "Marks of 
Students with an extreme and without any observation")

install.packages("moments")
library(moments)
time = c(32, 35, 45, 83, 74, 55, 68, 38, 35, 
55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
time
all.moments(time, order.max = 2)
all.moments(time, order.max = 4)
all.moments(time, order.max = 2, central = T)
all.moments(time, order.max = 4, central = T)
all.moments(time, order.max = 2,absolute = T)
all.moments(time, order.max = 4, absolute = T)

time.na = c(NA, NA, 45, 83, 74, 55, 68, 38, 
35, 55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
time.na
all.moments(time.na, order.max = 4, na.rm=T)
all.moments(time.na, order.max = 4, central = T,na.rm = T)
all.moments(time.na, order.max = 4, absolute = T, na.rm=T)
