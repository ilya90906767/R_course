table <- read.delim('Adverse reactions.txt')

fist_column <- paste('Species',table$Any.Treatment.Emergent.AE)

rownames(table) <- fist_column

table <- table[, -1]


data2 <- read.delim('Response2Drug.txt')

t<-paste('Patient',rownames(data2))
rownames(data2)<-t
data2 <- data2[,-1]

study <- list(age = data2$Age, gender = data2$Gender, adverse_reactions = table)
print(study$age)

male_older_50 <- which(study$age >= 50 & study$gender == 'Male')
summary(male_older_50)
print(male_older_50)


placebo_freq <- table[which(rownames(table) == 'Placebo'), -1] 

print(placebo_freq)
