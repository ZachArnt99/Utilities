monthly <- 650
e <- exp(1)
r <- log(1.05)
years <- 34
months <- years*12

#For loop to create a vector of the future values of each month's investment
vals <- numeric()
for (i in 1:months) {
      vals[i] <- monthly*e^(r*i/12)
}
vals

contributions <- monthly*years*12
print(tail(vals))
print(sum(vals))
print(contributions)
