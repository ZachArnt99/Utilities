library(dplyr)
#Housemates only pay for utilities on dates when they sleep at the house. The first step is to create a "presence" dataframe.

P <- read.table("aprMay.csv", header = T, sep = ",") #P stands for presence. The .csv was created by exporting the most recently completed (or nearly completed) two full calendar months of the raw attendance record from Google Sheets.
dates <- P[,1]
P <- P[,2:9]
row.names(P) <- dates
P

#Now, enter all of the variable data.
U_bill <- 133.86 #Enter the amount of the Longmont utility bill for water and electricity.
U_first <- which(row.names(P) == "Apr 6") #Enter the billing date date of the second most recent utility bill. Use the three letter abbreviation for the month, followed by a space, followed by one or two digits for the day.
U_last <- which(row.names(P) == "May 5") #Enter the day prior to the most most recent utility billing date.
#Do the same for the gas and internet bills
G_bill <- 27.81
G_first <- which(row.names(P) == "Apr 21")
G_last <- which(row.names(P) == "May 18")
I_bill <- 49.95
I_first <- which(row.names(P) == "Apr 20")
I_last <- which(row.names(P) == "May 19")
#Enter the first and last days of the previous month (the month that contains the billing dates of the most recent utility bills).
Rent_first <- which(row.names(P) == "May 1")
Rent_last <- which(row.names(P) == "May 31")
#Enter the number of days to ignore in the previous month. These are the number of days from Rent_first to Rent_last when the housemate was not living at the house because they had either not moved in yet, or had already moved out.
na_days <- data.frame(Rob = 0, Jesse = 0, Luis1 = 31, Luis2 = 31, Luis3 = 31, Zach = 0, Mike = 2, Basil = 29) 
#Enter the monthly base rent for each housemate.
base_Rent <- data.frame(Rob = 595, Jesse = 712.5, Luis1 = 0, Luis2 = 0, Luis3 = 0, Zach = 0, Mike = 895, Basil = 750)

#No more user input is required beyond this point.

#Calculate the proportion of each day's utilities attributable to each housemate.
P_prop <- P/rowSums(P)

#Calculate each housemate's fair share of the Longmont utility bill for water and electricity. Note: Each billing cycle ends on the date prior to the billing date of the most recent bill. 
days_U <- U_last - U_first + 1
U_day <- U_bill/days_U
U <- U_day*P_prop[U_first:U_last,]
Utot <- colSums(U)

#Calculate each housemate's fair share of the gas bill.
days_G <- G_last - G_first + 1
G_day <- G_bill/days_G
G <- G_day*P_prop[G_first:G_last,]
Gtot <- colSums(G)

#Calculate each housemate's fair share of the internet bill.
days_I <- I_last - I_first + 1
I_day <- I_bill/days_I
I <- I_day*P_prop[I_first:I_last,]
Itot <- colSums(I)

#Housemates only pay 1/2 rent on dates they were living at the house, but slept elsewhere.
#Calculate each housemate's rent based on the previous month's attendance.
days_Rent <- Rent_last - Rent_first + 1
P_last_month <- P[Rent_first:Rent_last,]
days_away <- colSums(P_last_month == 0) - na_days 
Rent_adjustment <- -1*days_away/2*base_Rent/days_Rent - base_Rent/days_Rent*na_days

#Combine the data into one table and summarize
Tots <- rbind(Utot,Gtot,Itot,base_Rent,Rent_adjustment)
row.names(Tots) <- c("Util","Gas","Inet","Rent","Adj")
sum_Tots <- Tots |> colSums() |> round(2)
Tots
sum_Tots
