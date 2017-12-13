#簡單的面積 
#(7)製作簡單的世紀帝國資料 
AoeStatistics <- data.frame( 
  民族 = c("法蘭西", "匈奴", "土耳其", "中國", "法蘭西", "匈奴", "土耳其", "中國", "法蘭西", "匈奴", "土耳其", "中國", "法蘭西", "匈奴", "土耳其", "中國"), 
  分數 = c(25, 25, 25, 25, 30, 20, 20, 30, 40, 10, 40, 10, 30, 0, 20, 50), 
  紀元 = c(-3000, -3000, -3000, -3000, -1000, -1000, -1000, -1000, 0, 0, 0, 0, 500, 500, 500, 500)) 
ggplot(AoeStatistics, aes(x = 紀元, y = 分數, fill = 民族)) + 
  geom_area(colour = "black", size = .2, alpha = .4) + 
  scale_fill_brewer(palette = "Blues", breaks = rev(levels(AoeStatistics$民族))) 
