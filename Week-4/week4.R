marks=c(337,316,327,340,374,330,352,353,370,380,384,398,413,428,430,438,439,479,460,450)

hours=c(23,25,26,27,30,26,29,32,33,34,35,38,39,42,43,44,45,46,44,41)

dfmarkshours=data.frame(hours,marks)
dfmarkshours

dfmarkshours$result=ifelse(dfmarkshours$marks>=350,"pass","fail")
dfmarkshours

library(ggplot2)

ggplot(data=dfmarkshours, mapping = aes(x=hours, y=marks)) +
    geom_point()

ggplot(data=dfmarkshours, mapping = aes(x=hours,y=marks,color=result))+geom_point(color="red",alpha=0.5,size=7)+geom_smooth(method = "lm",se=F,size=2)+labs(title = "Relationship between marks and no of hours of study", subtitle = "class 10 Result",caption = "Govt. College",x="Time (in Hours)",y="Marks(out of 500)",color="result?")+theme_minimal()

salesper = c(1,1,2,1,2,3,2,2,3,3,3,1,2,3,2,2,3, 
1,1,3,3,1,2,1,3,3,3,2,2,2,2,1,2,2,1,1,1,3,2,2,
1,2,3,2,2,1,2,3,3,2,1,2,2,3,1,1,2,1,2,3,2,3,2,
2,3,1,2,3,3,3,2,1,1,1,2,1,1,2,1,2,3,3,1,2,3,3,
2,1,2,3,2,1,3,2,2,2,2,3,2,2)

library(ggplot2)
name=c("SP1","SP2","SP3")
table(salesper)

freqsalesper=as.numeric(table(salesper))
data=data.frame(name,freqsalesper)
data

ggplot(data,aes(x=name,y=freqsalesper))+geom_bar(stat = "identity",fill="pink",color="black")+labs(title = "Performance of SalesPerson",x="SalesPerson",y="No of times customer attended")


ggplot(data,aes(x=name,y=freqsalesper))+geom_bar(stat="identity")+coord_flip()

ggplot(data, aes(x=name,y=freqsalesper))+geom_bar(stat="identity",fill="pink",color="black")+labs(title="Performance of Salesperson",x="No of times customer attended",y="Salesperson")+coord_flip()

ggplot(data, aes(x=name,y=freqsalesper))+geom_bar(stat="identity",width=0.8)

#Reorder
ggplot(data, aes(x=reorder(name,freqsalesper),y=freqsalesper))+geom_bar(stat="identity")

ggplot(data, aes(x=name,y=freqsalesper))+geom_bar(stat="identity")+theme(axis.text.x=element_text(angle=45,hjust=1))


#TreeMapify
state=c("UP", "UP", "UP", "UP", "UP", "MP","MP", "MP", "TN", "TN")

city=c("Lucknow", "Kanpur", "Agra", "Noida","Ghaziabad", "Indore", "Bhopal", "Ujjain","Chennai", "Kanchipuram")

students=c(1000, 900, 800, 700, 600, 550, 450,350, 200, 100)

dftreemap=data.frame(state,city,students)
dftreemap

install.packages("treemapify")
library(treemapify)
ggplot(dftreemap,aes(area=students,fill=state))+geom_treemap()


ggplot(dftreemap, aes(area=students,fill=state,label=students))+ geom_treemap() + geom_treemap_text()

ggplot(dftreemap,aes(area=students,fill=state,label=paste(state,students,sep="\n")))+geom_treemap()+geom_treemap_text(color="white",place="centre",size=15)+theme(legend.position = "none")


metrocity = c(rep("Delhi", 3), rep("Mumbai", 3),rep("Kolkata", 3), rep("Chennai", 3))

schools = rep(c("primary", "secondary", "college"),4)

numstudent = c(100, 120, 140, 200, 220, 240, 300,320, 340, 400, 420, 440)

datastud=data.frame(metrocity,schools,numstudent)
datastud


ggplot(datastud, aes(fill=schools,y=numstudent,x=metrocity))+geom_bar(position = "dodge",stat="identity")