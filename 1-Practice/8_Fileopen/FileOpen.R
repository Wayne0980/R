#�r�����j�ȡ]CSV�^ 
#���J�ɮ� 
csvdata <- read.csv(".\\Rdata.csv") 

#����e5����� 
head(csvdata, 5) 
#Office Open XML�].xlsx�^ 
#�w��xlsx package 

#install.packages("xlsx") 

any(grepl("xlsx", installed.packages())) 
#���Jxlsx 
library("xlsx") 

xlsxdata <- read.xlsx(".\\Rdata.xlsx", sheetIndex=1) 

#����e5����� 
head(xlsxdata, 5)

#Office 97 -2003�����].xls)  
#�w��xls package 

#install.packages("gdata") 

#���Jxls 
library(gdata) 
#Read first sheet 
xlsdata <- read.xls(".\\Rdata.xls", sheet = 1) 

#����e5����� 
head(xlsdata, 5) 
