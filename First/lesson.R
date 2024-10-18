num1 <- as.numeric(readline(prompt="чисто1")) #14


num2_str <- readline(prompt="число2 ") #15,8
num2_comma <- as.numeric(gsub(",", ".", num2_str)) #convert to int

sum <- num1 + num2_comma
print(paste("sum is:", sum))


transition<-function(x){
  x<-x*1000
  x<-x/3600
  return(x)
}
example<-transition(sum)


#zhuravleva_si@mail.ru