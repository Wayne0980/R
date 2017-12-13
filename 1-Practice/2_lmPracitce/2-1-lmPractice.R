x = sample(1:10,25,replace=TRUE) # 從 1 到 10 之中可重複的隨機抽出 25 個樣本
x
y = 1+3*x　 # 用這些 x 樣本透過線性關係式產生 y 樣本，這是完美的線性關係，完全沒有誤差。
y
plot(x,y)　# 畫出 (x,y) 的圖形，您會發現所有點都分布在一條斜率為 3 的斜線上
xy = data.frame(x, y)　# 讓 (x,y) 的配對形成 frame 變數，這樣才能做為 lm(formula, data) 中的 data 參數。
xy
model = lm(y~x, data=xy) # 開始作線性迴歸分析
model　 # 顯示分析結果，發現 截距 intercept 為　1, 且 x 的係數為 3，也就是 y=1+3*x，正確找出我們產生資料用的算式。

