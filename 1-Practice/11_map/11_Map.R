#���Jmaps��ggplot2�M��
#install.packages(c("maps")) 
library(maps) 
library(ggplot2)

#���J�@�ɦa�ϤG���a��(Latitude�n��,Longitude�g��)
world_map <- map_data("world")
head(world_map, 5)
#��X�ϰ�
sort(unique(world_map$region))
p <- ggplot(world_map, aes(x = long, y = lat, group = group, fill = region)) + 
  geom_polygon(colour = "black") + 
  scale_fill_brewer(palette = "Set2")
p
#�Ȧ��a
mycountry <- c("France", "Austria", "Italy", "Switzerland", "Germany", "Spain", "Czech Republic")
honeymoon <- map_data("world", region = mycountry)

p <- ggplot(honeymoon, aes(x = long, y = lat, group = group, fill = region)) + 
  geom_polygon(colour = "black") + 
  scale_fill_brewer(palette = "Set2")
p

#���J�@�ɫ������g�n��(�G���a��)
data(world.cities)

mycity <- subset(world.cities, (world.cities$capital == 1 | world.cities$pop > 1000000) & world.cities$country.etc %in% mycountry)
mycity$region <- mycity$country.etc
mycity$group <- 1
mycity
p + geom_point(aes(x = long, y = lat, size = pop), data = mycity, alpha = .7) 
p +geom_point(aes(x = long, y = lat, size = pop), data = mycity, alpha = .7) +geom_text(aes(x = long, y = lat - 0.5, label = name), data = mycity, colour = "black", fontface = "bold")