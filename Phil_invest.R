library(tidyverse)
initial_investment <- 200000
net_worth <- initial_investment
current_value <- initial_investment
net_worth_vector <- numeric()
monthly_investment <- 650
return_rate <- .04
years_of_savings <- 20
number_of_contributions <- years_of_savings*12
for(i in 1:number_of_contributions){
      new_net_worth <- net_worth*exp(1)^(return_rate/12) + monthly_investment
      net_worth_vector[i] <- new_net_worth
      net_worth <- net_worth_vector[i]
}
net_worth_table <- data.frame(net_worth = net_worth_vector, years = seq(from = 1/12, to = number_of_contributions/12, by = 1/12))
net_worth
ggplot(net_worth_table, aes(y = net_worth, x = years)) + geom_point() + scale_y_continuous(labels = scales::label_dollar()) + geom_hline(yintercept = 1000000, color = "green", size = 2)
