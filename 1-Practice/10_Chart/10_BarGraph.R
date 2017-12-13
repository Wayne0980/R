#製作簡單的資料(女生版1歲前身高曲線97分位) 
library(ggplot2) 
BaybyGowth <- data.frame( 
  month = c(1, 2, 4, 6, 8, 10, 12), 
  height = c(57, 61, 67, 71, 74, 76, 79)) 
print(BaybyGowth) 

#長條圖(1) 
ggplot(BaybyGowth, aes(x = factor(month), y = height)) + geom_bar(stat = "identity") 
#長條圖(3)筆數顯示 
#顯示鑽石統計資料，各種切工的筆數 
#只放x軸鑽石切工 
ggplot(diamonds, aes(x = cut)) + geom_bar() 
#長條圖(4)推疊 
#只篩選E Color的鑽石 
df <- subset(diamonds, color == "E") 
#觀察鑽石重量是否 >= 1克拉作為待會顏色的區隔 
df$pos <- df$carat >= 1 

#比較各種切工的價格差異，同時加上是否 >= 1克拉作為區隔 
ggplot(df, aes(x = cut, y = price, fill = pos)) + 
  geom_bar(stat = "identity", position = "identity") 
#長條圖(5)區塊顯示 
#The Normal Distribution 常態分佈 
#建立一個100筆常態分佈隨機樣本函數  
df<- data.frame(x = seq(1:100) , y = rnorm(100)*10) 

#是否大於0 
df$pos <- df$y >= 0 
ggplot(df, aes(x = x, y = y, fill = pos)) + 
  geom_bar(stat = "identity", position = "identity")
