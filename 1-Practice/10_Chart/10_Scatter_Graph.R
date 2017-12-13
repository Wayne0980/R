library(ggplot2) 
ggplot(diamonds, aes(x = carat, y = price)) + geom_point() 

#密度圖(density) 
ggplot(data = diamonds) + geom_density(aes(x = carat), fill = "#003366")
#散佈圖(2) 鑽石的淨度
ggplot(diamonds, aes(x = carat, y = price)) + geom_point(aes(color = clarity))
ggplot(diamonds, aes(x = carat, y = price, shape = clarity)) + geom_point(aes(color = clarity))
#散佈圖矩陣(3) Y軸:切工  X軸:顏色 
ggplot(diamonds, aes(x = carat, y = price)) + geom_point(aes(color = color)) + facet_grid(cut ~ color) 
ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) + geom_point(aes(color = Species)) + stat_density2d(aes(color = Species)) 
qplot(Sepal.Length, Petal.Length, data = iris, color = Species, size = Petal.Width, alpha = I(0.7))
