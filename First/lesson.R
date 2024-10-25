num1 <- as.numeric(readline(prompt="число1"))
#> num1 <- as.numeric(readline(prompt="число1"))
#число1 15.2


num2_str <- readline(prompt="число2 ")
#> num2_str <- readline(prompt="число2 ")
#число2 2,3
#Now число2 is "2,3"
num2_comma <- as.numeric(gsub(",", ".", num2_str))
#num2_comma is 15.2

sum <- num1 + num2_comma
print(paste("sum is:", sum))
#[1] "sum is: 17.5"

transition<-function(x){
  x<-x*1000
  x<-x/3600
  return(x)
}
example<-transition(sum)
print(example)
#[1] 4.861111
