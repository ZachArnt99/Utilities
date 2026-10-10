library(tidyverse)
P <- 200650 #Principal invested
monthly_investment <- 650
r <- .04 #Simple interest rate, i.e., APR
t <- 20 #Years we are investing
n <- 365*24*4 #Number of times we compound per year
N <- 12*t #Number of monthly_investments we make
current_totals <- numeric()

for(i in 1:N){
      new_total <- P*(1+r/n)^(n*1/12) + monthly_investment
      P <- new_total
      current_totals[i] <- P
}

net_worth_table <- data.frame(Net_worth = current_totals, Years = seq(from = 1/12, to = t, by = 1/12))
ggplot(net_worth_table, aes(y = Net_worth, x = Years)) + geom_point() + scale_y_continuous(labels = scales::label_dollar()) + geom_hline(yintercept = 1000000, color = "green", linewidth = 2)
tail(current_totals,2)
