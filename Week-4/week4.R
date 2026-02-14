marks <- c(337, 316, 327, 340, 374, 330, 352, 353, 370, 380, 384, 398, 413, 428, 430, 438, 439, 479, 460, 450)

hours <- c(23, 25, 26, 27, 30, 26, 29, 32, 33, 34, 35, 38, 39, 42, 43, 44, 45, 46, 44, 41)

dfmarkshours <- data.frame(hours, marks)
dfmarkshours

dfmarkshours$result <- ifelse(dfmarkshours$marks >= 350, "pass", "fail")
dfmarkshours

library(ggplot2)

ggplot(data = dfmarkshours, mapping = aes(x = hours, y = marks)) +
    geom_point()

ggplot(data = dfmarkshours, mapping = aes(x = hours, y = marks, color = result)) +
    geom_point(color = "red", alpha = 0.5, size = 7) +
    geom_smooth(method = "lm", se = F, size = 2) +
    labs(title = "Relationship between marks and no of hours of study", subtitle = "class 10 Result", caption = "Govt. College", x = "Time (in Hours)", y = "Marks(out of 500)", color = "result?") +
    theme_minimal()

salesper <- c(
    1, 1, 2, 1, 2, 3, 2, 2, 3, 3, 3, 1, 2, 3, 2, 2, 3,
    1, 1, 3, 3, 1, 2, 1, 3, 3, 3, 2, 2, 2, 2, 1, 2, 2, 1, 1, 1, 3, 2, 2,
    1, 2, 3, 2, 2, 1, 2, 3, 3, 2, 1, 2, 2, 3, 1, 1, 2, 1, 2, 3, 2, 3, 2,
    2, 3, 1, 2, 3, 3, 3, 2, 1, 1, 1, 2, 1, 1, 2, 1, 2, 3, 3, 1, 2, 3, 3,
    2, 1, 2, 3, 2, 1, 3, 2, 2, 2, 2, 3, 2, 2
)

library(ggplot2)
name <- c("SP1", "SP2", "SP3")
table(salesper)

freqsalesper <- as.numeric(table(salesper))
data <- data.frame(name, freqsalesper)
data

ggplot(data, aes(x = name, y = freqsalesper)) +
    geom_bar(stat = "identity", fill = "pink", color = "black") +
    labs(title = "Performance of SalesPerson", x = "SalesPerson", y = "No of times customer attended")


ggplot(data, aes(x = name, y = freqsalesper)) +
    geom_bar(stat = "identity") +
    coord_flip()

ggplot(data, aes(x = name, y = freqsalesper)) +
    geom_bar(stat = "identity", fill = "pink", color = "black") +
    labs(title = "Performance of Salesperson", x = "No of times customer attended", y = "Salesperson") +
    coord_flip()

ggplot(data, aes(x = name, y = freqsalesper)) +
    geom_bar(stat = "identity", width = 0.8)

# Reorder
ggplot(data, aes(x = reorder(name, freqsalesper), y = freqsalesper)) +
    geom_bar(stat = "identity")

ggplot(data, aes(x = name, y = freqsalesper)) +
    geom_bar(stat = "identity") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))


# TreeMapify
state <- c("UP", "UP", "UP", "UP", "UP", "MP", "MP", "MP", "TN", "TN")

city <- c("Lucknow", "Kanpur", "Agra", "Noida", "Ghaziabad", "Indore", "Bhopal", "Ujjain", "Chennai", "Kanchipuram")

students <- c(1000, 900, 800, 700, 600, 550, 450, 350, 200, 100)

dftreemap <- data.frame(state, city, students)
dftreemap

install.packages("treemapify")
library(treemapify)
ggplot(dftreemap, aes(area = students, fill = state)) +
    geom_treemap()


ggplot(dftreemap, aes(area = students, fill = state, label = students)) +
    geom_treemap() +
    geom_treemap_text()

ggplot(dftreemap, aes(area = students, fill = state, label = paste(state, students, sep = "\n"))) +
    geom_treemap() +
    geom_treemap_text(color = "white", place = "centre", size = 15) +
    theme(legend.position = "none")


library(ggplot2)
metrocity <- c(rep("Delhi", 3), rep("Mumbai", 3), rep("Kolkata", 3), rep("Chennai", 3))

schools <- rep(c("primary", "secondary", "college"), 4)

numstudent <- c(100, 120, 140, 200, 220, 240, 300, 320, 340, 400, 420, 440)

datastud <- data.frame(metrocity, schools, numstudent)
datastud


ggplot(datastud, aes(fill = schools, y = numstudent, x = metrocity)) +
    geom_bar(position = "fill", stat = "identity")


marks <- c(337, 316, 327, 340, 374, 330, 352, 353, 370, 380, 384, 398, 413, 428, 430, 438, 439, 479, 460, 450)

hours <- c(23, 25, 26, 27, 30, 26, 29, 32, 33, 34, 35, 38, 39, 42, 43, 44, 45, 46, 44, 41)

dfmarks <- data.frame(hours, marks)

ggplot(dfmarks, aes(x = hours, y = marks)) +
    geom_point(color = "pink", size = 8, alpha = 0.7)

ggplot(dfmarks, aes(x = hours, y = marks)) +
    geom_point(color = "pink", size = 8, alpha = 0.7) +
    labs(x = "no of hours", y = "marks obtained", title = "marks of students", subtitle = "marks for class 10") +
    geom_smooth(method = "lm")


height <- c(166, 125, 130, 142, 147, 159, 159, 147, 165, 156, 149, 164, 137, 166, 135, 142, 133, 136, 127, 143, 165, 121, 142, 148, 158, 146, 154, 157, 124, 125, 158, 159, 164, 143, 154, 152, 141, 164, 131, 152, 152, 161, 143, 143, 139, 131, 125, 145, 140, 163)

dfheight <- data.frame(value = height)
dfheight

ggplot(dfheight, aes(x = height)) +
    geom_histogram() +
    labs(title = "Height of students", x = "height")


ggplot(dfheight, aes(x = height)) +
    geom_histogram(fill = "skyblue", color = "white", bins = 10) +
    labs(title = "Height of students", subtitle = "No of bins=20", x = "height")

ggplot(dfheight, aes(x = height)) +
    geom_dotplot()
+labs(
    title = "Height of Students", y =
        "Proportion of Students", x = "Height"
)

dfheight <- data.frame(value = height)
ggplot(dfheight, aes(x = height)) +
    geom_dotplot(
        fill =
            "red", color = "blue"
    ) +
    labs(title = "Height of
Students", y = "Proportion of Students", x = "Height")

ggplot(dfheight, aes(x = height)) +
    geom_density()
+labs(title = "Height of Students")


ggplot(dfheight, aes(x = height)) +
    geom_density(fill = "pink") +
    labs(
        title =
            "Height of Students"
    )

ggplot(dfheight, aes(x = height)) +
    geom_density(
        fill = "pink", bw = 1
    ) +
    labs(title = "Height of Students")
