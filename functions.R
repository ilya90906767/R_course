data <- read.delim('Response2Drug.txt')

data <- data[!is.na(data$Age) ,]

data$Age <- ifelse(data$Age < 30, "молодой", ifelse(data$Age > 60, "среднячок", "старый"))

write.table(data, "test.txt")


fact<- function(value){
  if (value > 0 & value%%1==0){
    
    if (value%%2 == 0){
      result <- 1
      for (i in 2:value){
        result <- result*i
      }
      return(result)

    } else {
      result <- 1
      for (i in 1:value){
        result <- result*i
      }
      return(result)
      
    }
    
    
    
  } else{return(NA)}
}

fact(-2)


# set.seed(1) 
# 
# random_vec <- runif(n=25, min=1, max=20)

matri<-runif(25,-10,50)
result<-matrix(matri,size,size)
xxx <- apply(result, 1, sum)
yyy <- apply(result, 2, sum)
zzz <- apply(result, 2, mean)
vvv <- apply(result, 1, mean)



num1 <- as.numeric(readline(prompt="чисто1"))

num2 <- as.numeric(readline(prompt="число2"))

sum <- num1 + num2
print(paste("суммы", sum))


transition<-function(x){
  x<-x*1000
  x<-x/3600
  return(x)
}
example<-transition(5)

#Второе занятие
first <- -4:5 
second <- c("S","V","123","NaN",1)

third <- rep(101, 12)

third1 <- as.numeric(third)
third2 <- as.character(third)

rand_vec <- runif(50, -20, 100)
ind <- which(rand_vec > 70)

good_inf <- which(rand_vec < 70 & rand_vec > 30)

abs_vec <- c()

for (i in seq_along(rand_vec)) {
  if (rand_vec[i] < 0) {
    abs_vec[i] <- abs(rand_vec[i])
  } else {
    abs_vec[i] <- rand_vec[i]
  }
}

new_abs <- abs(rand_vec)
log_vec<-log(abs_vec)

alphabet2 <- letters[alphabet]
# alphabet <- c()

# for (i in seq_along(log_vec)){
#   alphabet[i] <- letters[log_vec[i]]
# }

print(alphabet)

replaced_alphabed <- which(alphabet=="e" & alphabet=="f")

results_of_rand <- sum(rand_vec)
results_of_rand2 <- prod(rand_vec)
results_of_rand3 <- mean(rand_vec)


