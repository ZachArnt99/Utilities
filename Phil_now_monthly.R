library(tidyverse)
P <- 200650 #Principal invested
monthly_investment <- 650
r <- .04 #Simple interest rate, i.e., APR
t <- 20 #Years we are investing
freq <- 12 #Number of times we compound per year
N <- 12*t #Number of monthly_investments we make
current_totals <- numeric()

for(i in 1:N){
      new_total <- P*(1+r/freq) + monthly_investment
      P <- new_total
      current_totals[i] <- P
}

net_worth_table <- data.frame(Net_worth = current_totals, Years = seq(from = 1/freq, to = t, by = 1/freq))
ggplot(net_worth_table, aes(y = Net_worth, x = Years)) + geom_point() + scale_y_continuous(labels = scales::label_dollar()) + geom_hline(yintercept = 1000000, color = "green", linewidth = 2)
tail(current_totals,2)

m <- 1 + r/freq
n <- 1 + N
a <- monthly_investment
principal_at_end <- 200000*m^N
sum_of_as <- monthly_investment*(1-m^n)/(1-m)
total_at_end <- principal_at_end + monthly_investment*(1-m^n)/(1-m)

ra <- r/12
sum_of_as2 <- monthly_investment*((1+ra)^N-1)*(1+ra)/ra
FV <- principal_at_end + monthly_investment*((1+ra)^N-1)*(1+ra)/ra + monthly_investment
                              