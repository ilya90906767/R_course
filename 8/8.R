#p value <= 0,05 is for rejecting H0 - effect is not true if H0 is tey 
#p value >= 0,05 no conditions to reject H0 вероятность получить достоверные если H0 верна высоки
#H0 mean that there is no smth 

tt<-read.delim("8/Response2drug2.txt",as.is=T)
head(table)

mydata <- xtabs(~ Mutation + Response, data=tt)

prob.tab<-prop.table(mydata,1)*100


mydata <- xtabs(~ Gender + Mutation + Response, data=tt)

prob.tab<-prop.table(mydata, c(1, 2))
prob.tab<-addmargins(prob.tab, 3)
ftable(prob.tab)*100


mydata<-table(tt$Mutation, tt$Response)
chisq.test(mydata) 

fish <- fisher.test(mydata)
print(fish)

mydata2 <- xtabs(~ Mutation + Response + Gender, data=tt)

print(mydata2)


mydata <- xtabs(~Mutation + Response + Gender, data=tt)
mantelhaen.test(mydata)

layout(1)
mosaicplot(~Gender + Mutation + Response, data=tt, col=c("red","blue"), main="Связь между
мутацией в гене и эффектом лекарства у пациентов разного пола")
#Тест Фишера когда выборка мала
#Будет ли эффект более выраженным у пациентов носителей по сравнению с теми ук кого мутации нет \
#ОЦенка связей меду двумя переменными с учетом влиянеия одной или несколько переменных 