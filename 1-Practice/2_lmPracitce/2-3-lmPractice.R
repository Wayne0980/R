x1 = sample(1:10, 25, replace=TRUE) # 產生第一個自變數的 25 個樣本值
y = 3+x1
x1
y
yx = data.frame(y, x1)　# 讓 (y, x1) 的配對形成 frame 變數，這樣才能做為 lm(formula, data) 中的 data 參數。
yx.model = lm(y~ x1, yx) # 開始作線性迴歸分析
yx.model
abline(yx.model,lwd=2) #lwd:線粗

