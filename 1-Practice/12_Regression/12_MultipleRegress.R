#���J���
library(ggplot2)
data(mtcars)

#�[����
head(mtcars)
cor(mtcars)[1,]
#��z���
mycars <- mtcars
#�վ�����
mycars$am <- ifelse(mtcars$am == 0, "automatic", "manual")
#�W�[�`�Ʈ�q
mycars$tdisp <- mtcars$cyl * mtcars$disp
#��z���
mycars <- mtcars
#�վ�����
mycars$am <- ifelse(mtcars$am == 0, "automatic", "manual");
#�W�[�`�Ʈ�q
mycars$tdisp <- mtcars$cyl * mtcars$disp
#���G�� ���� vs �o�� 
ggplot(mycars, aes(x = wt, y = mpg)) + geom_point(aes(color = am))
#���G�� ���O vs �o�� 
ggplot(mycars, aes(x = hp, y = mpg)) + geom_point(aes(color = hp))
#�c�����[�� �ۤ�� vs �o��
ggplot(mycars, aes(x = am, y = mpg)) + geom_boxplot(aes(fill = am))
mlm <- lm(mpg ~ wt + hp + am + tdisp, data = mycars)
summary(mlm)
Y = a + Bwt*x1 + Bhp*x2 +Bam*x3 + Btdisp*x4
Y = 34.50+(-3.10)*x1+(-0.04)*x2+(2.1884623)*x3 + (0.0003938)*x4
df <- data.frame(wt = 3,hp=245,am="automatic",tdisp=1548)
result <- predict(mlm, newdata = df)
result