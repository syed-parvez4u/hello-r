#This is from GitHub
print("Hello from GitHub")

name = "Syed"
version="R studio in writting"

print(name)
print("These lines has been written in R studio")

##Vectors
x<-c(0.5,0.6)
x

x<-c(TRUE,FALSE)
x
x<-9:29
x

x<-vector("numeric",length =10)
x

x<- 0:6
class(x)

as.numeric(x)
as.character(x)
as.logical(x)
as.numeric(x)


##Matrices
m<-matrix(1:6,nrow=2,ncol=3)
m

m<-1:10
m
dim(m)<-c(2,5)
m

##Cbind-ing and rbind-ing
x<-1:3
y<-10:12

cbind(x,y)
rbind(x,y)

##List
x<-c(1,2,"3",54)
x

x<-list(1,TRUE,"3",54)
x

##Factors
x<-factor(c("yes","yes","no","yes","no"))
x
unclass(x)

x<-factor(c("yes","yes","no","yes","no"),levels = c("yes","no"))
x

##Missing values
x<-c(1,2,NA,10,3)          
is.na(x)
is.nan(x)
x<-c(1,2,NaN,10,3)
is.nan(x)

##Data Frames
x<-data.frame(day=1:7,rain=c(T,F,F,T,T,F,T))
x
ncol(x)
nrow(x)
row.names(x)<-c("A","B","C","D","E","F","G")
x


##Names
x<-1:3
names(x)=NULL
names(x)<-c("Col_A","Col_B")
x

x<-list(a=1:5,b="ID",c=c("First Name","Last Name"))
x
x$a
x$c

m<-matrix(1:4,nrow=2,ncol=2)
dimnames(m)<-list(c("r1","r2"),c("col1","col2"))
m

##Subset
x<-c("a","b","c","c","d","a")
x[1]
x[2]
x[1:4]
x[x>"a"]

u<-x>"a"
u

##Subsetting a matrix
x<-matrix(1:6,2,3)
x
x[1,2]

x[1,2,drop=FALSE]


##Subsetting List
x<-list(weekday=1:4,rain_prob=0.6)
$weekday
x[1]
x[2]

x<-list(weekday=1:4,rain_prob=0.6,item="umbrela")
x[c(1,3)]
x[c(2,3)]

x<-list(a=list(10,12,14),b=c(3.14,2.81))
x[[c(1.3)]]

##Removing NA
x<-c(2,3,NA,4,NA)
is.na(x)
bad<-is.na(x)
bad
!bad
x[!bad]

x<-c(1,2,NA,4,NA,5)
y<-c("a","b",NA,"d",NA,"f")
good<-complete.cases(x,y)
good
x[good]
y[good]


airquality
view(airquality)

a<-airquality
a[1:6,]
good<-complete.cases(a)
a[good,][1,6,]
airquality[good,][1,6,]

##control structures
x<-4
y<-3

y<-if(x>3){
  10
}else{
  0
}
y  

for(i in 1:10){
  print(i)
}

x<-c("a","b","c","d")
for(i in 1:4){
  print(x[i])
}

for(i in seq_along(x)){
  print(x[i])
}

for(letter in x){
  print(letter)
}

for(i in 1:4) print(x[i])

x<-matrix(1:6,2,3)  

for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

count<-0
while(count<10){
  print(count)
  count<-count+1
}

z<-5
while(z>=3 && z<=10){
  print(z)
  coin<-rbinom(1,1,0.5)
  
  if(coin==1){
    z<-z+1
  }else{
    z<-z-1
  }
}

##Functions
x<-rnorm(100)
sd(x)


f<-function(a,b){
  print(a)
  print(b)
}
f(45)

##Vectorized operations
x<-1:4;y<-6:9
x+y
x>2
x<=2

rep(1,5)

##vectorised matrix operations
x<-matrix(1:4,2,2);y<-matrix(rep(10,4),2,2)
x*y   ##elementwise multiplications [,1][,2]

x/y

x%*%y  ##true multiplications


##Date and Time
as.Date("1970-01-01")

as.POSIXct("1970-01-01")
as.POSIXlt("1970-01-01")

x<-Sys.time()
x
p<-as.POSIXlt(x)
p
names(unclass(p))
names(unclass(p))
p$sec
p$mon

datestring<-c("January 10, 2012 10:40","December 9, 2011 9:10")
x<-strptime(datestring,"%B %d,%Y %H:%M")
x
class(x)

##Loop functions
##1.Lapply  (list format)
x<-list(a=1:5,b=rnorm(10))
lapply(x,mean)

x<-1:4
lapply(x,runif,min=50,max=100)

##2.sapply (enhance version of Lapply) (simplyfy results)
x<-list(a=1:4,b=rnorm(10),c=rnorm(20,1),d=rnorm(100,5))
sapply(x,mean)

##3.apply (array or matrix)
x<-matrix(rnorm(200),20,10)
x
apply(x,1,mean) ## 1 is for row
apply(x,2,mean) ## 2 is for column
rowSums(x) ## instead of apply row operation
colSums(x) ## instead of apply col operation
rowMeans(x)
colMeans(x)

apply(x,1,quantile)
apply(x,1,quantile,probs=c(0.25,0.75))


##4.tapply (subset of vector)
x<-c(rnorm(10),runif(10),rnorm(10))
f<-gl(3,10)     
tapply(x,f,mean)
rnorm(10)
rnorm(10)

tapply(x,f,mean,simplify=FALSE)

tapply(x,f,range)


##Data split
x<-c(rnorm(10),runif(10),rnorm(10))
f<-gl(3,10)
split(x,f)

library(datasets)
head(airquality)
s<-split(airquality,airquality$Month)
lapply(s,function(x) colSums(x[,c("Ozone","Solar.R","Wind")]))
sapply(s,function(x) colMeans(x[,c("Ozone","Solar.R","Wind")]))
sapply(s,function(x) colMeans(x[,c("Ozone","Solar.R","Wind")],na.rm=TRUE))       




