library(ggplot2)
bluetooth_power = data.frame(
  ble = c(8.39, 8.31, 8.31, 8.32, 8.38, 7.47, 8.38, 8.33, 8.3, 8.33),
  bt = c(5.08, 5.01, 5.13, 5.02, 5.02, 4.96, 5.02, 4.94, 4.95, 5.01)
              
)
ggplot(bluetooth_power, aes(x = bt, y = ble)) + geom_point(shape = 10, size = 5) + labs(x = "bt power", y = "ble power") 
#lm(y~x)  
bluetoothLM <- lm(bt ~ ble, data = bluetooth_power) 
summary(bluetoothLM)

ggplot(bluetooth_power, aes(x = bt, y = ble)) + geom_point(shape = 10, size = 5) + geom_smooth(method = lm) + labs(x = "bt power", y = "ble power") 
#(4)¹w´ú 
new <- data.frame(ble = 8.38) 
result <- predict(bluetoothLM, newdata = new) 
result 
