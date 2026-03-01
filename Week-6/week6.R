time=c(32,35,45,83,74,55,68,38,35,55,66,65,42,68,72,84,67,36,42,58)
time
max(time)-min(time)
diff(range(time))

time=c(NA, NA, 45,83,74,55,68,38,35,55,66,65,42,68,72,84,67,36,42,58)
max(time)
max(time, na.rm = TRUE)
max(time, na.rm=T)-min(time, na.rm = T)

time=c(32,35,45,83,74,55,68,38,35,55,66,65,42,68,72,84,67,36,42,58)
time
IQR(time) #Interquartile range
IQR(time)/2 #quartille deviation

time=c(NA, NA, 45,83,74,55,68,38,35,55,66,65,42,68,72,84,67,36,42,58)
time
IQR(time, na.rm=T)
IQR(time, na.rm=T)/2

 time = c(32, 35, 45, 83, 74, 55, 68, 38, 35, 
55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
time

A=10
mean(abs(time-A))
median(time)
mean(abs(time-median(time)))

breaks=seq(30,90, by=10)
breaks
time.cut=cut(time, breaks, right=F)
time.cut
table(time.cut)
f=as.numeric(table(time.cut))
f
x = c(35,45,55,65,75,85)
x
 f = c(5,3,3,5,2,2)
 x = c(35,45,55,65,75,85)
median(x)
 xmedian = 56.66
 A = 10
sum(f*abs(x-A))/sum(f)
sum(f*abs(x-xmedian))/sum(f)
mean(abs(time-A))
mean(abs(time-median(time)))
sum(f*abs(x-A))/sum(f)

time.na = c(NA, NA, 45, 83, 74, 55, 68, 38, 
35, 55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
time.na
A=10
mean(abs((time.na-A)), na.rm=T)
median(time.na, na.rm=T)
mean(abs((time.na-median(time.na,na.rm=T))), na.rm=T)

 time = c(32, 35, 45, 83, 74, 55, 68, 38, 35, 55, 
66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
time
var(time)
sd(time)
sqrt(var(time))
((length(time)-1)/length(time))*var(time)
sqrt(((length(time)-1)/length(time))*var(time))

breaks=seq(30,90,by=10)
time.cut=cut(time, breaks,right=F)
time.cut
table(time.cut)
f=as.numeric(table(time.cut))
f
 x = c(35,45,55,65,75,85)
x
xmean=sum(f*x)/sum(f)
xmean
sum(f*(x-xmean)^2)/sum(f)
sqrt(sum(f*(x-xmean)^2)/sum(f))


time.na=c(NA, NA,45, 83, 74, 55, 68, 38, 35, 55, 66, 65, 42, 68, 72, 84, 67, 36,42,58)
time.na
var(time.na, na.rm=T)
sqrt(var(time.na, na.rm=T))
