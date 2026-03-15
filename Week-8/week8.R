time = c(32, 35, 45, 83, 74, 55, 68, 38, 35, 
55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)

time
install.packages("moments")
library(moments)
skewness(time)
kurtosis(time)

 time.na = c(NA, NA, 45, 83, 74, 55, 68, 38, 
35, 55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
time.na
skewness(time.na, na.rm=T)
kurtosis(time.na, na.rm=T)

x = c(1, 2, 3, 4)
mean(x)
sqrt(var(x))
(x-mean(x))/sqrt(var(x))
scale(x)
scale(x, center = T, scale = T)
scale(x, scale = T)
scale(x, scale = F)
scale(x, center = F)

x=c(1,2,3,4)
y=c(10,20,30,40)
dfxy=data.frame(x,y)
dfxy
scale(dfxy)
scale(dfxy, scale = F)
scale(dfxy, center = F)

xm=matrix(nrow = 3, ncol = 2, data=1:6)
xm

scale(xm)
scale(xm, scale = F)
scale(xm, center = F)
