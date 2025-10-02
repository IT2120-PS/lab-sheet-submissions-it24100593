getwd()
y<-rnorm(25,mean = 45,sd=2)
t.test(y,mu=46,alternative = "less")
 #Since p-value is (0.008435) is less than 0.05,reject H0
 #at 5% level of significance.Therefore,we can conclude that
 # the average baking time is less than  46 minutes.
 