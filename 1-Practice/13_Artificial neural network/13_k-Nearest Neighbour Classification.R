#(1)載入iris資料
data(iris)

#(2)畫散佈圖
library(ggplot2)
#花萼長寬分佈
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point(aes(color = Species))
#花瓣長寬分佈
ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) + geom_point(aes(color = Species))
#(3)切分訓練及測試樣本
#設定亂數種子
set.seed(1111)
#樣本筆數
n <- nrow(iris)
#取出樣本數的idx
t_idx <- sample(seq_len(n), size = round(0.7 * n))
#訓練資料與測試資料比例: 70%建模，30%驗證
traindata <- iris[t_idx,]
testdata <- iris[ - t_idx,]
#安裝並載入class套件
library(class)
install.packages(c("dplyr"))
library(dplyr)
#(參數1)準備訓練樣本組答案
trainLabels <- traindata$Species

#(參數2)(參數3)去除兩個樣本組答案
knnTrain <- traindata[, - c(5)]
knnTest <- testdata[, - c(5)]

#計算k值(幾個鄰居)通常可以用資料數的平方根
kv <- round(sqrt(n))
kv

#(4)建立模型 
prediction <- knn(train = knnTrain, test = knnTest, cl = trainLabels, k = kv)

#(5)評估正確性
cm <- table(x = testdata$Species, y = prediction, dnn = c("實際", "預測"))
cm
knnaccuracy <- sum(diag(cm)) / sum(cm)
knnaccuracy
#利用knn結果畫圖
#訓練組
knnTrain$Species <- trainLabels
ggplot(knnTrain, aes(x = Petal.Length, y = Petal.Width)) + geom_point(aes(color = Species)) +
  stat_density2d(aes(color = Species))

#測試組
knnTest$Species <- prediction
ggplot(knnTest, aes(x = Petal.Length, y = Petal.Width), n = 10) + geom_point(aes(color = Species)) +
  stat_density2d(aes(color = Species), h = 0.6)
