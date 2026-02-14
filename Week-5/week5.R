# Mean

time <- c(
    32, 35, 45, 83, 74, 55, 68, 38, 35, 55,
    66, 65, 42, 68, 72, 84, 67, 36, 42, 58
)
mean(time)

time.na <- c(
    NA, NA, 45, 83, 74, 55, 68, 38,
    35, 55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58
)
mean(time.na)
mean(time.na, na.rm = T)
mean(time.na, na.rm = F)

library(MASS)
colnames(painters)
painters$Expression
mean(painters$Expression)


time
breaks <- seq(30, 90, by = 10)
time.cut <- cut(time, breaks, right = F)
time.cut
table(time.cut)

# Fetch the frequencies
f <- as.numeric(table(time.cut))
m <- c(35, 45, 55, 65, 75, 85)
weighted.mean(m, f)
mean(time)


# Median
minutes <- c(30, 31, 30, 30, 29, 29, 29, 29, 29, 28, 28, 28, 27, 27, 27, 26, 26, 26, 26, 25, 25, 25, 25, 25, 25, 24, 24, 23, 22, 21, 21)
median(minutes)

minutes.na <- c(
    NA, NA, 30, 30, 29, 29, 29, 29, 29,
    28, 28, 28, 27, 27, 27, 26, 26, 26, 26, 25, 25, 25, 25, 25,
    25, 24, 24, 23, 22, 21, 21
)
median(minutes.na, na.rm = T)

library(MASS)
colnames(painters)
painters$Expression
median(painters$Expression)

height <- c(166, 125, 130, 142, 147, 159, 159, 147, 165, 156, 149, 164, 137, 166, 135, 142, 133, 136, 127, 143, 165, 121, 142, 148, 158, 146, 154, 157, 124, 125, 158, 159, 164, 143, 154, 152, 141, 164, 131, 152, 152, 161, 143, 143, 139, 131, 125, 145, 140, 163)
quantile(height)
probs <- seq(0, 1, 0.25)
probs
quantile(height, probs)

# Quantile
height <- c(166, 125, 130, 142, 147, 159, 159, 147, 165, 156, 149, 164, 137, 166, 135, 142, 133, 136, 127, 143, 165, 121, 142, 148, 158, 146, 154, 157, 124, 125, 158, 159, 164, 143, 154, 152, 141, 164, 131, 152, 152, 161, 143, 143, 139, 131, 125, 145, 140, 163)
quantile(height)
probs <- seq(0, 1, 0.25)
probs
quantile(height, probs = seq(0, 1, 0.25))

probs <- seq(0, 1, 0.1)
probs
quantile(height, probs = seq(0, 1, 0.1))

probs <- seq(0, 1, 0.01)
probs
quantile(height, probs = seq(0, 1, 0.01))

height.na <- c(NA, NA, 130, 142, 147, 159, 159, 147, 165, 156, 149, 164, 137, 166, 135, 142, 133, 136, 127, 143, 165, 121, 142, 148, 158, 146, 154, 157, 124, 125, 158, 159, 164, 143, 154, 152, 141, 164, 131, 152, 152, 161, 143, 143, 139, 131, 125, 145, 140, 163)

quantile(height.na, na.rm = T, probs = seq(0, 1, 0.25))
quantile(height.na, na.rm = T, probs = seq(0, 1, 0.1))
quantile(height.na, na.rm = T, probs = seq(0, 1, 0.01))

data <- c(10, 10, 10, 10, 2, 2, 3, 4, 5, 6)
modetab <- table(as.vector(data))
modetab

names(modetab)[modetab == max(modetab)]

data <- matrix(nrow = 3, ncol = 3, data = c(
    1, 2, 2,
    3, 3, 4, 5, 6, 6
))
data

modetab <- table(as.vector(data))
modetab
names(modetab)[modetab == max(modetab)]

# GM and HM
minutes <- c(30, 31, 30, 30, 29, 29, 29, 29, 29, 28, 28, 28, 27, 27, 27, 26, 26, 26, 26, 25, 25, 25, 25, 25, 25, 24, 24, 23, 22, 21, 21)
prod(minutes)^(1 / length(minutes))
breaks <- seq(15, 40, by = 5)
breaks
minutes.cut <- cut(minutes, breaks, right = F)
minutes.cut
table(minutes.cut)
f <- as.numeric(table(minutes.cut))
f
x <- c(17.5, 22.5, 27.5, 32.5, 37.5)
f <- as.numeric(table(time.cut))

# GM
prod(x^f)^(1 / sum(f))


# HM
1 / mean(1 / x)

minutes <- c(30, 31, 30, 30, 29, 29, 29, 29, 29, 28, 28, 28, 27, 27, 27, 26, 26, 26, 26, 25, 25, 25, 25, 25, 25, 24, 24, 23, 22, 21, 21)

1 / mean(1 / minutes)

x <- c(17.5, 22.5, 27.5, 32.5, 37.5)
f <- as.numeric(table(minutes.cut))
sum(f) / mean(f / x)
