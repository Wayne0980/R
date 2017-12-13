n <- c(1,1,2,4,6) 
plot(n, pch = 17, col = "blue", cex =2) 
#�`�X 
sum(n) 
#������ �`�X���Ӽ� 
mean(n) 

#�����:�N��ƥѤp��j�A��m�~���̡A�N�O�����  
median(n) 

#����:�@�ո�Ƥ��A�X�{�̦h���ƪ��� 
as.numeric(names(table(n)))[which.max(table(n))] 

#�e�����ƪ��I 
points(mean(n), pch = 4, col = "blue", cex = 3) 

#�e����ƪ��I 
points(median(n), pch = 3, col = "blue", cex = 3)

n <- (1:10) 

#�зǮt  
sd(n) 

#�ܲ��� 
var(n) 
sd(n) ^ 2 

#�ܲ��Y�� 
cv <- 100 * sd(n) / mean(n) 
cv 

#���Z(�̤j�ȴ�̤p��) 
range(n)[2] - range(n)[1] 

#�|����:���Ƥ������|�����A�������T���u�N�O�|����AQ1=P25,Q2=P50,Q3=75 
Q1 <- quantile(n, 1 / 4) 
Q2 <- quantile(n, 2 / 4) 
Q3 <- quantile(n, 3 / 4) 
Q1 
Q2 
Q3 

#IQR = Q3-Q1 
b <- Q3 - Q1 == IQR(n) 
b 
#�`���ƾ�(�W�n��) 
summary(n) 
#�ʤ��� 
quantile(n) 