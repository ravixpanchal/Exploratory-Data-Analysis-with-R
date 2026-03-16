# Question-1 (a)
score <- c(104, 105, 117, 120, 119, 92, 116, 87, 108, 132, 136, 129, 132, 97, 84, 141, 100, 104, 124, 141, 159, 112, 136, 114, 113, 113, 112, 98, 100, 103, 117, 123, 138, 111, 135, 107, 121, 124, 125, 94, 130, 128, 120, 112, 113, 109, 146, 116, 101, 127)

prot <- c(41, 42, 48, 49, 50, 35, 48, 33, 44, 56, 57, 53, 54, 38, 31, 60, 39, 42, 52, 59, 69, 46, 57, 46, 46, 47, 46, 38, 40, 41, 48, 51, 58, 45, 57, 43, 49, 51, 52, 37, 54, 53, 49, 45, 46, 44, 63, 48, 41, 53)

qqnorm(prot)

# Question-2(a)
qqline(prot)

# Question-3 (a)
qqplot(score, prot)

# Question-4(c)
((length(score) - 1) / length(score)) * (cov(score, prot))

# Question-5(b)
cov(score, prot)

# Question-6(a)
cor(score, prot)

# Question-7(c)

# Question-8(d)


# Question-9 (c)
x <- c(33, 31, 36, 39, 40)
y <- c(20, 25, 31, 36, 40)
z <- c(5, 8, 10, 13, 17)
library(scatterplot3d)

scatterplot3d(data.frame(x, y, z))

# Question-10 (c)
x <- c(13, 20, 16, 17, 22, 25, 28, 19)
y <- c(40, 42, 45, 61, 26, 44, 50, 40)
z <- c(75, 78, 80, 93, 97, 85, 88, 73)
scatterplot3d(data.frame(x, y, z), type = "h", color = "blue", pch = 2, angle = 160)

# Question-11(a)
class <- matrix(nrow = 6, ncol = 5, data = c(2, 25, 40, 2, 40, 6, 40, 50, 6, 120, 10, 30, 60, 10, 200, 15, 50, 80, 14, 280, 20, 70, 90, 16, 280, 30, 60, 90, 18, 360), byrow = T)
class
heatmap(class)

# Question-12 (b)
wordcloud(c(rep("Apple", 4), rep("Banana", 8)), c(rep(1, 4), rep(2, 8)))
