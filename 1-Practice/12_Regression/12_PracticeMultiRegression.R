library(ggplot2)
wiced_power = data.frame(
  wifi = c(1,4,1,3,2,4),
  ble =  c(1,8,3,5,6,10),
  bt =   c(2,8,1,7,4,6)
  
)

ggplot(wiced_power, aes(x = bt, y = wifi)) + geom_point(shape = 1, size = 5) + labs(x = "bt power", y = "wifi power") 
ggplot(wiced_power, aes(x = ble, y = wifi)) + geom_point(shape = 1, size = 5) + labs(x = "ble power", y = "wifi power") 
WICEDLM <- lm(wifi ~ ble+bt, data = wiced_power)
summary(WICEDLM)
ggplot(wiced_power, aes(x = bt, y = wifi)) + geom_point(shape = 1, size = 5) + geom_smooth(method = lm) + labs(x = "bt power", y = "wifi power") 
#
new <- data.frame(ble = 11,bt = 9)
result <- predict(WICEDLM, newdata = new) 
result 
