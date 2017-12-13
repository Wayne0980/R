library(ggplot2)
ggplot(cars, aes(x = speed, y = dist)) + geom_point(shape = 10, size = 5) 
#lm(y~x)  
carsLM <- lm(dist ~ speed, data = cars) 
#散佈圖 加上模型預測區域 
ggplot(cars, aes(x = speed, y = dist)) + geom_point(shape = 10, size = 5) + 
  geom_smooth(method = lm) + labs(x = "速度", y = "煞車距離") 
summary(carsLM) 
#(4)預測 
new <- data.frame(speed = 20) 
result <- predict(carsLM, newdata = new) 
result 
#(5)把預測座標放到圖上 
ggplot(cars, aes(x = speed, y = dist)) + geom_point(shape = 10, size = 5) + 
  geom_point(x = new$speed, y = result, size = 10, shape = 17, color = "red") + 
  geom_smooth(method = lm) + labs(x = "速度", y = "煞車距離") 
#來個card2從英制轉換為公制
cars2 <- cars
#一英哩 = 1.6公里
cars2$speedByMetric <- cars$speed * 1.6094
#一英尺 = 0.3048公尺
cars2$distByMetric <- cars$dist * 0.3048
ggplot(cars2, aes(x = speedByMetric, y = distByMetric)) + geom_point(shape = 10, size = 5)

