monthly <- 630
e <- exp(1)
r <- .05
years <- 34
months <- years*12
vals <- numeric()
for (i in 1:months) {
      vals[i] <- monthly*e^(r*i/12)
}
vals
contributions <- monthly*years*12
print(vals)
print(sum(vals))
print(contributions)
vals[84]
log(2)/7
