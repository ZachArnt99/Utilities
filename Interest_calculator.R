if(!require('scales')) {
      install.packages('scales')
      library('scales')
}

#Create a numeric vector containing the purchasing power of each monthly investment in today's economy.
monthly <- 670
e <- exp(1)
expected_APR <- .07 #Expected returns expressed as an annual percentage rate
expected_inflation <- .02 #Expected inflation rate
r <- log(1+expected_APR)-log(1+expected_inflation) #r is the rate of return we will use in our continuous growth model so we can express our future purchasing power in terms we can intuitively understand, i.e. how much money it would be in today's economy. 
years <- 34
months <- years*12
vals <- numeric()
for (i in 1:months) {
      vals[i] <- monthly*e^(r*i/12)
}

contributions <- monthly*years*12
print(noquote(c("Total planned contributions :",dollar(contributions))))
print(noquote(c("Marina's wealth when she is 48:",
              dollar(sum(vals)))))
print(noquote(c("This month's investment:",
                dollar(monthly))))
print(noquote(c("Future power of this month's investment:",
                dollar(round(tail(vals,1),2)))))