x1 <- c(4,5,9,12)
y <-c(9,8,6,3)
yx12 = data.frame(y, x1)
yx12.model = lm(y~ x1, yx12) # 開始作線性迴歸分析
yx12.model
abline(yx12.model,lwd=2) #lwd:線粗

