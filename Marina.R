library(dplyr)
#half rent and 0 utilities on day away 

P <- read.table("aprMay.csv", header = T, sep = ",")
dates <- P[,1]
P <- P[,-1] 
row.names(P) <- dates
View(P)
P_prop <- P/rowSums(P)

Rfirst <- which(row.names(P) == "May 1")
Rlast <- which(row.names(P) == "May 31")
daysR <- Rlast - Rfirst + 1

Rbase <- data.frame(Rob = 595, Jesse = 712.50, Luis1 = 0, Luis2 = 0, Luis3 = 0, Zach = 0, Mike = 895, Basil = 750)
nadays <- data.frame(Rob = 0, Jesse = 0, Luis1 = 31, Luis2 = 31, Luis3 = 31, Zach = 0, Mike = 2, Basil = 29)

#Calculate stuff
Ufirst <- which(row.names(P) == "Apr 6")
Ulast <- which(row.names(P) == "May 5")
daysU <- Ulast - Ufirst + 1
Ubill <- 133.86
Uday <- Ubill/daysU
U <- Uday*P_prop[Ufirst:Ulast,]
Utot <- colSums(U)

Gfirst <- which(row.names(P) == "Apr 21")
Glast <- which(row.names(P) == "May 18")
daysG <- Glast - Gfirst + 1
Gbill <- 27.81
Gday <- Gbill/daysG
G <- Gday*P_prop[Gfirst:Glast,]
Gtot <- colSums(G)

Ifirst <- which(row.names(P) == "Apr 20")
Ilast <- which(row.names(P) == "May 19")
daysI <- Ilast - Ifirst + 1
Ibill <- 49.95
Iday <- Ibill/daysI
I <- Iday*P_prop[Ifirst:Ilast,]
Itot <- colSums(I)

#This code calculates rent discounts
daysaway <- colSums(P[Rfirst:Rlast,] == 0) - nadays
Radj <- -daysaway*Rbase/daysR/2 - nadays*Rbase/daysR
Rtot <- Rbase + Radj

#Tabulate and summarize
Tots <- rbind(Rtot,Utot,Gtot,Itot)
row.names(Tots) <- c("Rent", "Utl", "Gas", "Inet")
sumTots <- colSums(Tots)
