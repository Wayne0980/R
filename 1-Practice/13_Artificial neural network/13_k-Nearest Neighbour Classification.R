#(1)���Jiris���
data(iris)

#(2)�e���G��
library(ggplot2)
#�Ḱ���e���G
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point(aes(color = Species))
#��ä���e���G
ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) + geom_point(aes(color = Species))
#(3)�����V�m�δ��ռ˥�
#�]�w�üƺؤl
set.seed(1111)
#�˥�����
n <- nrow(iris)
#���X�˥��ƪ�idx
t_idx <- sample(seq_len(n), size = round(0.7 * n))
#�V�m��ƻP���ո�Ƥ��: 70%�ؼҡA30%����
traindata <- iris[t_idx,]
testdata <- iris[ - t_idx,]
#�w�˨ø��Jclass�M��
library(class)
install.packages(c("dplyr"))
library(dplyr)
#(�Ѽ�1)�ǳưV�m�˥��յ���
trainLabels <- traindata$Species

#(�Ѽ�2)(�Ѽ�3)�h����Ӽ˥��յ���
knnTrain <- traindata[, - c(5)]
knnTest <- testdata[, - c(5)]

#�p��k��(�X�ӾF�~)�q�`�i�H�θ�Ƽƪ������
kv <- round(sqrt(n))
kv

#(4)�إ߼ҫ� 
prediction <- knn(train = knnTrain, test = knnTest, cl = trainLabels, k = kv)

#(5)�������T��
cm <- table(x = testdata$Species, y = prediction, dnn = c("���", "�w��"))
cm
knnaccuracy <- sum(diag(cm)) / sum(cm)
knnaccuracy
#�Q��knn���G�e��
#�V�m��
knnTrain$Species <- trainLabels
ggplot(knnTrain, aes(x = Petal.Length, y = Petal.Width)) + geom_point(aes(color = Species)) +
  stat_density2d(aes(color = Species))

#���ղ�
knnTest$Species <- prediction
ggplot(knnTest, aes(x = Petal.Length, y = Petal.Width), n = 10) + geom_point(aes(color = Species)) +
  stat_density2d(aes(color = Species), h = 0.6)