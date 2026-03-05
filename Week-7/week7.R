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