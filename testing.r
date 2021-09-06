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
