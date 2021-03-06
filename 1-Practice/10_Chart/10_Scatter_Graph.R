library(ggplot2) 
ggplot(diamonds, aes(x = carat, y = price)) + geom_point() 

#�K�׹�(density) 
ggplot(data = diamonds) + geom_density(aes(x = carat), fill = "#003366")
#���G��(2) �p�۪��b��
ggplot(diamonds, aes(x = carat, y = price)) + geom_point(aes(color = clarity))
ggplot(diamonds, aes(x = carat, y = price, shape = clarity)) + geom_point(aes(color = clarity))
#���G�ϯx�}(3) Y�b:���u  X�b:�C�� 
ggplot(diamonds, aes(x = carat, y = price)) + geom_point(aes(color = color)) + facet_grid(cut ~ color) 
ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) + geom_point(aes(color = Species)) + stat_density2d(aes(color = Species)) 
qplot(Sepal.Length, Petal.Length, data = iris, color = Species, size = Petal.Width, alpha = I(0.7))
