

rna <- read.delim("Seven/mRNA-protein_correlation.txt", as.is = TRUE)

rownames <- rownames(rna) 
colnames(rna) <- c("Protein","Gene","RNACN","PrCN")

missing_RNACN <- sum(is.na(rna$RNACN))
missing_PrCN <- sum(is.na(rna$PrCN))  


rna <-na.omit(rna)

remaining_genes <- nrow(rna)

# par(mfrow = c(2, 2))
# 
# pr<- par(no.readonly=TRUE)
# par(mfrow=c(2,1))
# boxplot(log2(RNACN)~Gene,data=rna, main="РНК к Гену")
# lines(rna$Gene, col="red",lwd=2)
# boxplot(log2(PrCN)~Gene,data=rna, main="РНК к Гену")
# 
# par(pr)

layout(matrix(c(1, 2, 3, 4), nrow = 2, byrow = TRUE)) 
hist(rna$RNACN, main = "Гистограмма RNACN", xlab = "Концентрация RNACN", col = "lightblue")
boxplot(rna$RNACN, main = "Диаграмма размахов RNACN", ylab = "Концентрация RNACN")
hist(rna$PrCN, main = "Гистограмма PrCN", xlab = "Концентрация PrCN", col = "lightgreen")
boxplot(rna$PrCN, main = "Диаграмма размахов PrCN", ylab = "Концентрация PrCN")

rna$RNACN_log <- log(rna$RNACN)
rna$PrCN_log <- log(rna$PrCN)

layout(matrix(c(1, 2, 3, 4), nrow = 2, byrow = TRUE))

hist(rna$RNACN_log, main = "Гистограмма логарифмированной RNACN", xlab = "Лог(Концентрация RNACN)", col = "lightblue")
boxplot(rna$RNACN_log, main = "Диаграмма размахов логарифмированной RNACN", ylab = "Лог(Концентрация RNACN)")
hist(rna$PrCN_log, main = "Гистограмма логарифмированного PrCN", xlab = "Лог(Концентрация PrCN)", col = "lightgreen")
boxplot(rna$PrCN_log, main = "Диаграмма размахов логарифмированного PrCN", ylab = "Лог(Концентрация PrCN)")

layout(1)
boxplot(rna$RNACN_log~Gene,data=rna, main="РНК к Гену") #CNV 

layout(1)

plot(rna$RNACN_log, rna$PrCN_log,
     main = "Зависимость логарифмов концентраций белка от мРНК",
     xlab = "Лог(Концентрация мРНК)",
     ylab = "Лог(Концентрация белка)",
     col = "blue",  
     pch = 19,      
     cex = 0.5)    #razmer


correlation <- cor(rna$RNACN_log, rna$PrCN_log)
print(paste("Пирсоон:", correlation))


text(locator(1), paste("R =", round(correlation, 2)), col = "red", cex = 1.5)


abline(lm(rna$PrCN_log ~ rna$RNACN_log), col = "darkgreen", lwd = 2)