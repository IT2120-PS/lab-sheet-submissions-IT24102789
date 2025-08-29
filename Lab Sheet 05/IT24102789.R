setwd("C:\\Users\\Anusara\\OneDrive\\Desktop\\IT24102789")

#1
Delivery_Times= read.table("Exercise - Lab 05.txt", header=TRUE, sep=",")

fix(Delivery_Times)

names(Delivery_Times) = c("X1")

attach(Delivery_Times)


#2
hist(X1,main ="deliver times")

histogram<- hist(X1,main="Histogram for deliver times", breaks= seq(20,70,length=11),right=FALSE)

#3
breaks<- round(histogram$breaks)
breaks

freq<- histogram$counts
freq

mids<- histogram$mids
mids

classes <- c()

for(i in 1: length(breaks)-1){
  classes[i]<- paste0("[",breaks[i],",",breaks[i+1],")")
}  

cbind(Classes= classes, Frequency= freq)

# The Distribution reveals approximately symmetric distribution

#4
cum.freq<- cumsum(freq)

new<- c()

cum.freq<- cumsum(freq)

new<- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]= cum.freq[i-1]
  }
}

plot(breaks,new,type='p',main="Cumalative Frequency Polygon for deliver times", 
     xlab= "Time", ylab="Cumulative Frequency", ylim= c(0,max(cum.freq)))

cbind(Upper=breaks, CumFreq=new)

