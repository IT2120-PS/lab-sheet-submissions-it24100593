
setwd("C:\\Users\\abish\\OneDrive\\Documents\\Y2S1\\PS\\Lab 10")
getwd()


observe <- c(55, 62, 43, 46, 50)


prob <- c(0.2, 0.2, 0.2, 0.2, 0.2)


chisq.test(observe)             
chisq.test(observe, p = prob)    


file.path <- "https://www.sthda.com/sthda/RDoc/data/housetasks.txt"
housetasks <- read.delim(file.path, row.names = 1)
housetasks    


chisq.test(housetasks)

