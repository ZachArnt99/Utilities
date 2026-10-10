library(tidyverse)
P <- 200000 #Principle invested
monthly_investment <- 650
r <- .04 #Simple interest rate, i.e., APR
t <- 20 #Years we are investing
investment_multiples <- c(1,rep(0,23+30*24),1,rep(0,23+27*24),1,rep(0,23+30*24),1,rep(0,23+29*24),1,rep(0,23+30*24),1,rep(0,23+29*24),1,rep(0,23+30*24),1,rep(0,23+30*24),1,rep(0,23+29*24),1,rep(0,23+30*24),1,rep(0,23+29*24),1,rep(0,23+30*24))
investments_in_a_year <- monthly_investment*investment_multiples
all_investments <- rep(investments_in_a_year,t)
n <- 24*365 #Number of times we compound per year
#number_of_contributions <- years_of_savings*12
current_totals <- numeric()
#nest_eggs <- numeric() 
for(i in 1:(n*t)){
      new_total <- P*(1+r/(n)) + all_investments[i]
      #nest_eggs[i] <- initial_investment*(1+simple_return_rate/12)^(i-1)
      P <- new_total
      current_totals[i] <- P
}
#additions <- rep(monthly_investments, each = 12)
#eggs <- rep(nest_eggs, each = 12)
#net_worth_vector <- numeric()
#for(i in 1:number_of_contributions){
#      new_net_worth <- eggs[i] + sum(additions[1:i])
#      net_worth_vector[i] <- new_net_worth
#}
#net_worth_table <- data.frame(net_worth = net_worth_vector, years = seq(from = 1/12, to = years_of_savings, by = 1/12))
#net_worth
net_worth_table <- data.frame(Net_worth = current_totals, Years = seq(from = 1/(24*n), to = t, by = 1/(24*n)))
ggplot(net_worth_table, aes(y = Net_worth, x = Years)) + geom_point() + scale_y_continuous(labels = scales::label_dollar()) + geom_hline(yintercept = 1000000, color = "green", linewidth = 2)
#for(i in 1:years_of_savings){
#     monthly_investments[i] <- monthly_investment*(1+simple_return_rate)^(i-1)
#}
#for(j in 1:years_of_savings){
##     for(i in 1:12){
#         monthly_investments[(j-1)*12+i] <- monthly_investment*simple_return_rate^(j-1)+monthly investment
#     }
#      for(i in 13:24){
#            monthly_investments[i] <- monthly_investment*(1+simple_return_rate)
#}
#for(i in 25:36){
#     monthly_investments[i] <- monthly_investment*(1+2*simple_return_rate)
#      } 
#}
