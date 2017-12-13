#(5)�h����u�� 
#���Jplyr 
library(plyr) 
#�`��������������(60���J�`��6��) 
tg <- ddply(ToothGrowth, c("supp", "dose"), summarise, length = mean(len)) 
#�˵���z�������ƾ� 
tg 
#(6)�ε��Ĥ覡�ӵe�u(colour) 
ggplot(tg, aes(x = dose, y = length, colour = supp)) + 
  geom_line(linetype = "dashed",size=4) + 
  geom_point(shape = 22, size = 5, fill = "white")