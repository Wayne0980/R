#²�檺���n 
#(7)�s�@²�檺�@���Ұ��� 
AoeStatistics <- data.frame( 
  ���� = c("�k����", "�I��", "�g�ը�", "����", "�k����", "�I��", "�g�ը�", "����", "�k����", "�I��", "�g�ը�", "����", "�k����", "�I��", "�g�ը�", "����"), 
  ���� = c(25, 25, 25, 25, 30, 20, 20, 30, 40, 10, 40, 10, 30, 0, 20, 50), 
  ���� = c(-3000, -3000, -3000, -3000, -1000, -1000, -1000, -1000, 0, 0, 0, 0, 500, 500, 500, 500)) 
ggplot(AoeStatistics, aes(x = ����, y = ����, fill = ����)) + 
  geom_area(colour = "black", size = .2, alpha = .4) + 
  scale_fill_brewer(palette = "Blues", breaks = rev(levels(AoeStatistics$����))) 