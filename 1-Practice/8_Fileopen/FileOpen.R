#逗號分隔值（CSV） 
#載入檔案 
csvdata <- read.csv(".\\Rdata.csv") 

#抓取前5筆顯示 
head(csvdata, 5) 
#Office Open XML（.xlsx） 
#安裝xlsx package 

#install.packages("xlsx") 

any(grepl("xlsx", installed.packages())) 
#載入xlsx 
library("xlsx") 

xlsxdata <- read.xlsx(".\\Rdata.xlsx", sheetIndex=1) 

#抓取前5筆顯示 
head(xlsxdata, 5)

#Office 97 -2003版本（.xls)  
#安裝xls package 

#install.packages("gdata") 

#載入xls 
library(gdata) 
#Read first sheet 
xlsdata <- read.xls(".\\Rdata.xls", sheet = 1) 

#抓取前5筆顯示 
head(xlsdata, 5) 

