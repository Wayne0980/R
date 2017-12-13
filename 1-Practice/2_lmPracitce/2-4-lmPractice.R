x1 = sample(1:10, 25, replace=TRUE) # 產生第一個自變數的 25 個樣本值
x2 = sample(1:8, 25, replace=TRUE) # 產生第二個自變數的 25 個樣本值
y = sample(1:8,25,replace=TRUE)#全都是變數
x1
x2
y
yx = data.frame(y, x1,x2)
yx12.model = lm(y~ x1+x2, yx12) # 開始作線性迴歸分析
yx12.model
abline(yx12.model,lwd=2) #lwd:線粗
