n <- c(1,1,2,4,6) 
plot(n, pch = 17, col = "blue", cex =2) 
#羆 
sum(n) 
#キА计 羆埃计 
mean(n) 

#い计:盢戈パ竚﹡い碞琌い计  
median(n) 

#渤计:舱戈い瞷程Ω计 
as.numeric(names(table(n)))[which.max(table(n))] 

#礶キА计翴 
points(mean(n), pch = 4, col = "blue", cex = 3) 

#礶い计翴 
points(median(n), pch = 3, col = "blue", cex = 3)

n <- (1:10) 

#夹非畉  
sd(n) 

#跑钵计 
var(n) 
sd(n) ^ 2 

#跑钵玒计 
cv <- 100 * sd(n) / mean(n) 
cv 

#禯(程搭程) 
range(n)[2] - range(n)[1] 

#だ:р戈ちだ单だい丁兵絬碞琌だQ1=P25,Q2=P50,Q3=75 
Q1 <- quantile(n, 1 / 4) 
Q2 <- quantile(n, 2 / 4) 
Q3 <- quantile(n, 3 / 4) 
Q1 
Q2 
Q3 

#IQR = Q3-Q1 
b <- Q3 - Q1 == IQR(n) 
b 
#羆挡计沮(禬ノ) 
summary(n) 
#κだ 
quantile(n) 
