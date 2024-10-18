# data2 <- data("ToothGrowth")
# 
# boxplot(ToothGrowth$len, main="Распределение длины зубов у морских свинок")
# boxplot(len~supp, data=ToothGrowth, varwidth=TRUE, notch=TRUE, col=c("green","red"), main="Распределение длины зубов у морских свинок")
# 
# hist(ToothGrowth$len, col="lightblue")
# 
# hist(ToothGrowth$len,col="lightblue", freq=FALSE, ylim=c(0,0.05))
# lines(density(ToothGrowth$len), col="red", lwd=2)
#   
# 
# pr<- par(no.readonly=TRUE)
# par(mfrow=c(2,2))
# boxplot(ToothGrowth$len, main="Длина зубов")
# 
# boxplot(len~supp, data=ToothGrowth, varwi dth=TRUE, notch=TRUE, col=c("green","red"), main=" Длина зубов")
# hist(ToothGrowth$len, col="lightblue", main=" Длина зубов")
# hist(ToothGrowth$len, col="lightblue", freq=FALSE, main=" Длина зубов")
# lines(density(ToothGrowth$len),col="red",lwd=2)
# 
# par(pr)
# 
 # mm<-matrix(c(1))
# 
# layout(mm)
# hist(ToothGrowth$len, col="lightblue", main="Длина зубов")
# boxplot(len~supp, data=ToothGrowth, varwidth=TRUE, notch=TRUE, col=c("green", "red"), main="Длина зубов")
# hist(ToothGrowth$len, col="lightblue", freq=FALSE, main="Длина зубов")
# lines(density(ToothGrowth$len), col="red", lwd=2)
# 

tt <- read.delim("C:\\RStudio_BetyaevILya\\Seven\\Hepatotoxicity.txt", as.is = TRUE)

length(tt$Class)
length(tt$Dose.category)
counts<-table(tt$Class,tt$Dose.category) 

barplot(counts, col=c("red","blue","green"), cex.names=2, cex.main=2, legend=rownames(counts), main="Зависимость степени гепатотоксичности от дозы")


barplot(counts, col=c("red","blue","green"), cex.names=2, cex.main=2, legend=rownames(counts), main="Зависимость степени гепатотоксичности от дозы", beside=TRUE)


data <- read.delim("C:/RStudio_BetyaevILya/Seven/Arthritis.txt", as.is = TRUE)
effect_counts <- table(data$Improved)

barplot(effect_counts, 
        main = "Терапевтический эффект лекарства", 
        xlab = "Категория терапевтического эффекта", 
        ylab = "Количество пациентов", 
        col = c("green", "yellow", "red"), 
        beside = TRUE)

effect_percent <- round(effect_counts / sum(effect_counts) * 100)
labels <- paste(names(effect_counts), effect_percent, "%", sep = " ")
pie(effect_counts, 
    labels = labels, 
    col = c("green", "yellow", "red"), 
    main = "Круговая диаграмма терапевтического эффекта")


grouped_counts <- table(data$Improved, data$Treatment)

barplot(grouped_counts, 
        main = "Составная столбчатая", 
        xlab = "Терап Эффект", 
        ylab = "Колво Пац", 
        col = c("blue", "orange"), 
        beside = TRUE)


 