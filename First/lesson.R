

num1 <- as.numeric(readline(prompt="чисто1"))


num2_str <- readline(prompt="число2 ")
num2_comma <- as.numeric(gsub(",", ".", num2_str))

sum <- num1 + num2_comma
print(paste("sum is:", sum))


transition<-function(x){
  x<-x*1000
  x<-x/3600
  return(x)
}
example<-transition(sum)


