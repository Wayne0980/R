#更igraph甅ン 
install.packages(c("igraph"))
library(igraph)  
#穝絬 
flightSchedule <- data.frame( 
  from = c("", "い", "蔼动", "狥", "狥"), 
  to   = c("い", "蔼动", "狥", "厚畄", "")) 
#print(flightSchedule) 

gd <- graph.data.frame(flightSchedule) 
plot(gd, layout = layout.fruchterman.reingold) 
#案计计(ㄢㄢΘ癸)
line <- c("", "い", "い", "蔼动", "蔼动", "狥", "狥", "厚畄", "狥", "")
gd <- graph(line)
plot(gd, layout = layout.fruchterman.reingold)
#呼隔瓜
gu <- graph(line, directed = FALSE)
plot(gu, layout = layout.fruchterman.reingold)
Hierarchy <- data.frame(
  name = c("Mike", "Suzie", "James", "Anya", "Jessica", "Benson", "Kyle", "John", "kaven", "Alston", "Ivy", "MT", "Elvis", "Simon"),
  Reportto = c("Suzie", "James", "Simon", "Suzie", "Suzie", "Suzie", "Suzie", "Suzie", "Suzie", "Suzie", "Suzie", "James", "James", "Daniel"))

gd <- graph.data.frame(Hierarchy)
plot(gd, layout = layout.fruchterman.reingold)
#更gcookbook
library(gcookbook)
madmen
g <- graph.data.frame(madmen, directed = FALSE)
par(mar = c(0, 0, 0, 0)) # Remove unnecessary margins
plot(g, layout = layout.circle, vertex.size = 8, vertex.label = NA)
