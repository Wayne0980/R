library("xlsx") 
library("readxl")

help("read.xlsx2")

xlsxdata <- read.xlsx(".\\LOG.xlsx", sheetIndex=1) 
head(xlsxdata, 900)

ggplot(xlsxdata, aes(x=index , y=value )) + geom_point(shape = 1, size = 1) + geom_smooth(method = lm) 
summary(xlsxdata) 
