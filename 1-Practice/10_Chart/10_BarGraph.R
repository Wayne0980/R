#�s�@²�檺���(�k�ͪ�1���e�������u97����) 
library(ggplot2) 
BaybyGowth <- data.frame( 
  month = c(1, 2, 4, 6, 8, 10, 12), 
  height = c(57, 61, 67, 71, 74, 76, 79)) 
print(BaybyGowth) 

#������(1) 
ggplot(BaybyGowth, aes(x = factor(month), y = height)) + geom_bar(stat = "identity") 
#������(3)������� 
#����p�۲έp��ơA�U�ؤ��u������ 
#�u��x�b�p�ۤ��u 
ggplot(diamonds, aes(x = cut)) + geom_bar() 
#������(4)���| 
#�u�z��E Color���p�� 
df <- subset(diamonds, color == "E") 
#�[���p�ۭ��q�O�_ >= 1�J�ԧ@���ݷ|�C�⪺�Ϲj 
df$pos <- df$carat >= 1 

#����U�ؤ��u������t���A�P�ɥ[�W�O�_ >= 1�J�ԧ@���Ϲj 
ggplot(df, aes(x = cut, y = price, fill = pos)) + 
  geom_bar(stat = "identity", position = "identity") 
#������(5)�϶���� 
#The Normal Distribution �`�A���G 
#�إߤ@��100���`�A���G�H���˥����  
df<- data.frame(x = seq(1:100) , y = rnorm(100)*10) 

#�O�_�j��0 
df$pos <- df$y >= 0 
ggplot(df, aes(x = x, y = y, fill = pos)) + 
  geom_bar(stat = "identity", position = "identity")