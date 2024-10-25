hw_data<-read.delim("8/Arthritis.txt",as.is=T)

hw_cross_data <- xtabs(~Treatment + Improved, data=hw_data)
#Кого лечили есть улучшения тк 21 против 13 и 7 (против 50) в отличии от плацебо
print(hw_cross_data)

prob.tab<-prop.table(hw_cross_data)*100
print(prob.tab)
#Тут уже легче так как проценты и есть те же самые результаты - эффект от лечения заметен в отличии от плацебо
chi <- chisq.test(hw_cross_data) 
print(chi) #Пи меньше 0,05 и отвергаем H0 о том что  нет эффекта от лечения 13 норм  0.001463 


fish <- fisher.test(hw_cross_data) #У Фишера пи тоже меньше 0.001393 
print(fish)

chi <- chisq.test(prob.tab) 
print(chi) #Пи меньше 0,05 и отвергаем H0 о том что  нет эффекта от лечения 13 норм  15.542, df = 2, p-value = 0.0004219


fish <- fisher.test(prob.tab) #У Фишера пи тоже меньше 0.0001951
print(fish)


layout(matrix(c(1, 2, 3, 4), nrow = 2, byrow = TRUE)) 

barplot(prob.tab)
barplot(hw_cross_data)

mydata3 <- xtabs(~Treatment + Improved + Sex, data=hw_data)
mantelhaen.test(mydata3) #H0 - fake так как p p-value = 0.0006647 меньше и значит есть разница между плацебо и лечением с учетом на гендер

layout(1)
mosaicplot(~Sex + Treatment + Improved, data=hw_data, col=c("red","blue"), main="Связь между
мутацией в гене и эффектом лекарства у пациентов разного пола")
