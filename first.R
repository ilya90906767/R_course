data2 <- read.delim('Response2Drug.txt')

t<-paste('Patient',rownames(data2))
rownames(data2)<-t


# data2 <- rm(data2[,1])

# data2 <- data2[, -which(names(df) == "Case")]
data2 <- data2[,-1]

#data2 <- data2[, -which(names(df) == "Case")]

data2 <- data2[!is.na(data2$Age) ,]
data2 <- na.omit(data2)

data2[, ncol(data2)] <- data2[, ncol(data2)] > 0 #ncol - is a last colun, > 0 just a logic expression 

summary(data2$Response)

medium <- which(data2$Age >= 35 & data2$Age <= 65)
young <- which(data2$Age <= 35 )
old <- which(data2$Age >= 65 )

summary(medium)
summary(young)
summary(old)

mutated <- which(data2$Mutation == "TRUE" )
unmutated <- which(data2$Mutation == "FALSE" )
summary(data2$Response[mutated])
summary(data2$Response[unmutated]) # Should correct the lines to summary 