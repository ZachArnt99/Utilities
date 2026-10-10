library(tidyverse)
P <- 200000 #Principal invested
monthly_investment <- 650
r <- .04 #Simple interest rate, i.e., APR
t <- 20 #Years we are investing
n <- 1 #Number of times we compound per year
N <- 12*t #Number of monthly_investments we make
exponents <- rep(c(rep(0,11),1),t)
current_totals <- numeric()
landmarks <- seq(from = 12, to = 12*t, by = 12)
Ptemp <- P
additions_multipliers <- rep(1:12, times = t)
for(i in 1:N){
      additions_this_year <- monthly_investment*additions_multipliers[i]
      Ptemp <- P + additions_this_year
      if(any(landmarks == i)){
            P <- P*(r)^exponents[i] + Ptemp
            current_totals[i] <- P
      } else {
      current_totals[i] <- Ptemp
      }
      
}
net_worth_table <- data.frame(Net_worth = current_totals, Years = seq(from = 1/12, to = t, by = 1/12))
ggplot(net_worth_table, aes(y = Net_worth, x = Years)) + geom_point() + scale_y_continuous(labels = scales::label_dollar()) + geom_hline(yintercept = 1000000, color = "green", linewidth = 2)
tail(current_totals,2)

