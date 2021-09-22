getwd()

file.exists('testing.r')

##download data

fileurl <- "https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2020-financial-year-provisional/Download-data/annual-enterprise-survey-2020-financial-year-provisional-csv.csv"
download.file(fileurl,destfile="./data/cameras.csv",method="curl")
list.files("./data")
cameradata<-read.csv("cameras.csv")
str(cameradata)

##Read Table
cameradata<-read.table("./data/cameras.csv",sep=",",header=TRUE)
head(cameradata)

##Read CSV
cdata<-read.csv("./data/cameras.csv")
head(cdata)


##Read Excel
install.packages("xlsx")
library('xlsx')
getwd()

cdata<-read.xlsx("./data/cameras.xlsx",sheetIndex=1,header=TRUE)
head(cdata)

colIndex=2:3
rowIndex=1:4
cameradata<-read.xlsx("./data/cameras.xlsx",sheetIndex=1,colIndex=colIndex,rowIndex=rowIndex)
cameradata

install.packages('readxl')
library('readxl')

readxl_example()

cameradata<-read.xlsx("./data/cameras.xlsx")
head(cameradata)


xlsx_example<-readxl_example("datasets.xls")
read_excel(xlsx_example)
