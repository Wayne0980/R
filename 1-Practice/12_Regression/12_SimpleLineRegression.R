library(ggplot2)
ggplot(cars, aes(x = speed, y = dist)) + geom_point(shape = 10, size = 5) 
#lm(y~x)  
carsLM <- lm(dist ~ speed, data = cars) 
#���G�� �[�W�ҫ��w���ϰ� 
ggplot(cars, aes(x = speed, y = dist)) + geom_point(shape = 10, size = 5) + 
  geom_smooth(method = lm) + labs(x = "�t��", y = "�٨��Z��") 
summary(carsLM) 
#(4)�w�� 
new <- data.frame(speed = 20) 
result <- predict(carsLM, newdata = new) 
result 
#(5)��w���y�Щ��ϤW 
ggplot(cars, aes(x = speed, y = dist)) + geom_point(shape = 10, size = 5) + 
  geom_point(x = new$speed, y = result, size = 10, shape = 17, color = "red") + 
  geom_smooth(method = lm) + labs(x = "�t��", y = "�٨��Z��") 
#�ӭ�card2�q�^���ഫ������
cars2 <- cars
#�@�^�� = 1.6����
cars2$speedByMetric <- cars$speed * 1.6094
#�@�^�� = 0.3048����
cars2$distByMetric <- cars$dist * 0.3048
ggplot(cars2, aes(x = speedByMetric, y = distByMetric)) + geom_point(shape = 10, size = 5)
