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
          