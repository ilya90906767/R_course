

# 
# x<-seq(-2*pi,2*pi,by=0.5)
# y<-sin(x)
# 
# 
# plot(x,y,type="b",lty=3,col="blue", main="График y=cos(x)",font.main=4,pch=1,ylab="cos(x)")
# lines(x,y,type="b",lty=1, pch=2,col="red")
# 
# abline(h=0,lty=2)


data <- data.frame(Dose = c(20, 30, 40, 45, 60),
                   DrugA = c(16, 20, 27, 40, 60),
                   DrugB = c(15, 18, 25, 31, 40))

plot(data$Dose, data$DrugA, type = "b", col = "blue", xlab = "effect", ylab = "dose-effect", main="dose-effect", font.main=3
      , lwd = 1, pch=2, xlim=c(20,60), ylim=c(15,60), lty=3)
lines(data$Dose, data$DrugB, col = "red", type="b",pch=7, lty=2)
legend("topleft", c("Drug A", "Drug B"), col = c("blue", "red"), lty = c(3,2), pch=c(2,7),cex = 1)
abline(h=50,lty=2)
# 
# xy<-locator(1)


# data("InsectSprays")

# boxplot(count~spray, data=InsectSprays,notch=2)