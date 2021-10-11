install.packages("RSQLite")

library(RSQLite)
data("mtcars")

mtcars$car_names<-rownames(mtcars)
rownames(mtcars)<-c()
head(mtcars)
getwd()
setwd("./data")
getwd()

conn<-dbConnect(RSQLite::SQLite(),"CarsDB.db")

dbWriteTable(conn,"cars_data",mtcars)
dbListTables(conn)

dbListFields(conn,"cars_data")
rdd<-dbReadTable(conn,"cars_data")

dbGetQuery(conn,"select * from cars_data limit 10")
dbGetQuery(conn,"select car_names,hp,cyl from cars_data where car_names like 'M%' and cyl in (6,8)")
dbGetQuery(conn,"select cyl,AVG(hp) as avg_hp,AVG(mpg) as avg_mpg from cars_data group by cyl order by avg_hp")

##Parameterised data
mpg<-18
cyl<-4
Result=0
Result<-dbGetQuery(conn,'select car_names,mpg,cyl where mpg<=? and cyl==?',params=c(mpg,cyl))

#Data frame and Data table
library(data.table)

DF=data.frame(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DF,3)

DT=data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DT,3)

tables()

DT[,list(mean(x),sum(z))]
DT[,table(y)]
DT[,w:=z*2]
DT[,a:=x>0]

##Subsetting & sorting
DT[order(DT$x)]
DT[order(DT$y)]
DT[order(-DT$y)]  ## - is for descending


##Data split & Apply
head(InsectSprays)
spIns=split(InsectSprays$count,InsectSprays$spray)
spIns$A

sprCount=lapply(spIns,sum)
sprCount

unlist(sprCount)

##Missing or NULL values
x<-c(1:4,NA,6:7,NA)
is.na(x)


df<-data.frame(col1=c(1:3,NA),col2=c("this",NA,"is","text"),col3=c(TRUE,FALSE,TRUE,TRUE),col4=c(2.5,4.2,3.2,NA),stringsAsFactors = FALSE)
is.na(df)
