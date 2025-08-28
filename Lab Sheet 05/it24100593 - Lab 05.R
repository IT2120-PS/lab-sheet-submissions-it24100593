setwd("C:\\Users\\IT24100593\\Desktop\\it24100593")


Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE)


fix(Delivery_Times)
names(Delivery_Times) <- c("X1")


fix(Delivery_Times)


Delivery_Times$X1
attach(Delivery_Times)
X1


hist(X1, main="Histogram of X1")


summary(X1)


histogram <- hist(X1, main="Histogram of X1",
                  breaks=seq(20, 70, length=10))


histogram
breaks <- round(histogram$breaks)
breaks


freq <- histogram$counts
freq


mid <- histogram$mids
mid


class <- c()
for(i in 1:(length(breaks) - 1)) {
  class[i] <- paste0("{", breaks[i], ",", breaks[i+1], "}")
}
class 


cbind(classes=class, frequency=freq)


lines(mid, freq)


plot(mid, freq, type="o", 
     main="Frequency Polygon for Delivery Times",
     ylab="Frequency", xlab="Delivery Time", 
     ylim=c(0, max(freq)))


cum.freq <- cumsum(freq)
cum.freq


new <- c()
for(i in 1:length(breaks)) {
  if(i == 1) {
    new[i] = 0
  } else {
    new[i] = cum.freq[i - 1]
  }
}
new


plot(breaks, new, type="o", 
     main="Cumulative Frequency Polygon for Delivery Times",
     ylab="Cumulative Frequency", xlab="Delivery Time", 
     ylim=c(0, max(cum.freq)))
