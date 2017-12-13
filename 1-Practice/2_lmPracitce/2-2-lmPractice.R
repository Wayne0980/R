x1 = sample(1:10, 25, replace=TRUE) # 產生第一個自變數的 25 個樣本值
x2 = sample(1:8, 25, replace=TRUE) # 產生第二個自變數的 25 個樣本值
y = 5 + 3 * x1 - 2 * x2 # 用這些 (x1, x2) 樣本透過線性關係式產生 y 樣本，這是完美的線性關係，完全沒有誤差。
x1
x2
y
yx12 = data.frame(y, x1, x2)　# 讓 (y, x1, x2) 的配對形成 frame 變數，這樣才能做為 lm(formula, data) 中的 data 參數。
yx12.model = lm(y~x1+x2, yx12) # 開始作線性迴歸分析
yx12.model

