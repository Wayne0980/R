#安裝並載入gcookbook 
#install.packages(c("ggplot2", "gcookbook")) 
library(ggplot2) 
library(gcookbook) 

#製作簡單的資料(女生版1歲前身高曲線97分位) 
BaybyGowth <- data.frame( 
  month = c(1, 2, 4, 6, 8, 10, 12), 
  height = c(57, 61, 67, 71, 74, 76, 79)) 
print(BaybyGowth) 

#兒童生長曲線 
#http://health99.hpa.gov.tw/doc/12024.pdf 

#先畫基本線圖 
ggplot(BaybyGowth, aes(x = month, y = height, group = 1)) + geom_line() + 
  geom_point(size = 4, shape = 22, colour = "darkred", fill = "pink") + geom_point()+ ylim(50, max(BaybyGowth$height)) 

