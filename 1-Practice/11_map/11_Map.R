#載入maps及ggplot2套件
#install.packages(c("maps")) 
library(maps) 
library(ggplot2)

#載入世界地圖二維地圖(Latitude緯度,Longitude經度)
world_map <- map_data("world")
head(world_map, 5)
#找出區域
sort(unique(world_map$region))
p <- ggplot(world_map, aes(x = long, y = lat, group = group, fill = region)) + 
  geom_polygon(colour = "black") + 
  scale_fill_brewer(palette = "Set2")
p
#旅行國家
mycountry <- c("France", "Austria", "Italy", "Switzerland", "Germany", "Spain", "Czech Republic")
honeymoon <- map_data("world", region = mycountry)

p <- ggplot(honeymoon, aes(x = long, y = lat, group = group, fill = region)) + 
  geom_polygon(colour = "black") + 
  scale_fill_brewer(palette = "Set2")
p

#載入世界城市的經緯度(二維地圖)
data(world.cities)

mycity <- subset(world.cities, (world.cities$capital == 1 | world.cities$pop > 1000000) & world.cities$country.etc %in% mycountry)
mycity$region <- mycity$country.etc
mycity$group <- 1
mycity
p + geom_point(aes(x = long, y = lat, size = pop), data = mycity, alpha = .7) 
p +geom_point(aes(x = long, y = lat, size = pop), data = mycity, alpha = .7) +geom_text(aes(x = long, y = lat - 0.5, label = name), data = mycity, colour = "black", fontface = "bold")
