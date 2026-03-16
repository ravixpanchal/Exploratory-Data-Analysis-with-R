install.packages("scatterplot3d")
library(scatterplot3d)
height=c(100,125,145,160,170)
weight=c(30,35,50,65,70)
age=c(10,15,20,30,35)
scatterplot3d(height,weight,age)
scatterplot3d(height, weight, age, angle = 120)
mtcars
scatterplot3d(x = mtcars$disp, y = mtcars$wt, z = 
mtcars$mpg, main="3-D Scatterplot of Mileage Vs. 
Engine Displacement vs. Car Weight")

scatterplot3d(x = mtcars$disp,y = mtcars$wt, z = 
mtcars$mpg, 
# fill red coloured circles
color="red", pch = 18,
# lines to the horizontal plane
type = "h",
main="3-D Scatterplot of Mileage Vs. Engine Displacement 
vs. Car Weight",
xlab = "Displacement (cubic inch)", 
ylab = "Weight (Pound/1000)",
zlab = "Miles/Gallon") 


cust = matrix(nrow=4, ncol=3, data =c(2,20, 
30,26,53,40,42,15,25,30,75,100), byrow = T)
cust
heatmap(cust)
custnew = matrix(nrow=4, ncol=3, data =c(2,100, 
1000,6,300,3000,10,500,5000,20,700,7000), byrow 
= T)
custnew
heatmap(custnew)

custnew = matrix(nrow=4, ncol=3, data =c(2,100, 
1000,6,300,3000,10,500,5000,20,700,7000), byrow 
= T)
custnew
heatmap(t(custnew))

install.packages("wordcloud")
library(wordcloud)

x = c(rep("Mumbai", 4), rep("Delhi", 5))
y= c(rep(1,4), rep(2,5))
wordcloud(x,y)

x = c(rep("Mumbai", 4), rep("Delhi", 15))
y= c(rep(1,4), rep(2,15))
wordcloud(x,y)

x=c(rep("Mumbai",14), rep("Delhi",15))
y=c(rep(1,14), rep(2,15))
wordcloud(x,y)

x=c(rep("Ravi",5),rep("Abhinav",5))
y=c(rep(1,5),rep(2,5))
wordcloud(x,y)

x = c(rep("Mumbai", 4), rep("Delhi", 5))
y = c(rep(1,4), rep(2,5))
wordcloud(x, y, col=terrain.colors(length(x), 
alpha=0.9), rot.per=0.8)

install.packages("wordcloud2")
library(wordcloud2)
x = demoFreq$word
y = demoFreq$freq
wordcloud(x, y)

x = seq(-10, 10, length= 30)
y = x
f =function(x,y){r = sqrt(x^2+y^2);10*sin(r)/r}
z = outer(x, y, f)
z[is.na(z)] = 1
op = par(bg = "white")
persp(x,y,z, theta=30, phi=30, expand=0.5, col= 
"lightblue")

persp(x, y, z, theta = 30, phi = 30, expand = 
0.5, col = "lightblue", ltheta = 120, shade = 
0.75, ticktype = "detailed", xlab = "X", ylab = 
"Y", zlab = "Sinc( r )")
