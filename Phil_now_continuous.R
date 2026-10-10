library(tidyverse)
P <- 200650 #Principle invested
monthly_investment <- 650
r <- .04 #Nominal interest rate, i.e., APR
t <- 20 #Years we are investing
nest_egg <- P*exp(1)^(r*t)
periods <- seq(from = 1/12, to = t, by = 1/12)
nest_eggs <- numeric()
additions <- numeric()
sum_of_additions <- numeric()
net_worth <- numeric()
counter <- 1

for(period in periods){
      new_addition <- monthly_investment*exp(1)^(r*(period-(1/12)))
      new_nest_egg <- P*exp(1)^(r*period)
      additions[counter] <- new_addition
      sum_of_additions[counter] <- sum(additions)
      nest_eggs[counter] <- new_nest_egg
      new_net_worth <- nest_eggs[counter]+sum_of_additions[counter]
      net_worth[counter] <- new_net_worth
      counter <- counter+1
}

net_worth_table <- data.frame(Net_worth = net_worth, Years = periods)
ggplot(net_worth_table, aes(y = Net_worth, x = Years)) + geom_point() + scale_y_continuous(labels = scales::label_dollar()) + geom_hline(yintercept = 1000000, color = "green", linewidth = 2)
tail(net_worth,2)
