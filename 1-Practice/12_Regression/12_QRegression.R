library(ggplot2)
xy = data.frame(
  x_ <-c(-5,-3,-1,0,1,3,5 ),
  y_ <-c(142,52,10,7,16,70,172) 
)
ggplot(xy, aes(x = x_, y = y_)) + geom_point(shape = 1, size = 5) + labs(x = "x", y = "y")
geom_smooth(method = lm) 

LM <- lm(y_ ~ I(x_^2)+x_, data = xy)
summary(LM)
ggplot(xy, aes(x = x_, y = y_)) +geom_smooth(aes(x = x_, y = y_), stat = "identity") + geom_point(shape = 1, size = 5) + labs(x = "x", y = "y")
