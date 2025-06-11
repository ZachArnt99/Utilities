<<<<<<< HEAD
monthly <- 650
e <- exp(1)
r <- log(1.05)
years <- 34
months <- years*12

#For loop to create a vector of the future values of each month's investment
=======
monthly <- 630
e <- exp(1)
r <- .05
years <- 34
months <- years*12
>>>>>>> a263521c5589825b05ad1f86a684b35c11c4253c
vals <- numeric()
for (i in 1:months) {
      vals[i] <- monthly*e^(r*i/12)
}
vals
<<<<<<< HEAD

contributions <- monthly*years*12
print(tail(vals))
print(sum(vals))
print(contributions)
=======
contributions <- monthly*years*12
print(vals)
print(sum(vals))
print(contributions)
vals[84]
log(2)/7
>>>>>>> a263521c5589825b05ad1f86a684b35c11c4253c
