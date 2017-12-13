#(5)多條折線圖 
#載入plyr 
library(plyr) 
#總結牙齒成長紀錄(60筆彙總成6筆) 
tg <- ddply(ToothGrowth, c("supp", "dose"), summarise, length = mean(len)) 
#檢視整理完成的數據 
tg 
#(6)用給藥方式來畫線(colour) 
ggplot(tg, aes(x = dose, y = length, colour = supp)) + 
  geom_line(linetype = "dashed",size=4) + 
  geom_point(shape = 22, size = 5, fill = "white")
