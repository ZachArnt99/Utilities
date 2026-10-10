library(tidyverse)
balances <- numeric()
borrowed <- 300000
balance <- borrowed
payments <- rep(2000,360)
for (i in 1:length(payments)){
      new_balance <- balance*exp(1)^(.06/12)-payments[i]
      balances[i] <- new_balance
      balance <- new_balance
}
months <- sum(balances>0)
years_to_pay_off <- months/12
interest_paid <- sum(payments[1:months])-borrowed
balances[1:months]
years <- seq(from = 1/12, to = months/12, by = 1/12)
months
my_table <- data.frame(Years = years, Owed = balances[1:months])
ggplot(my_table, aes(y = Owed, x = Years)) + geom_point() + scale_y_continuous(labels = scales::label_dollar()) + geom_hline(yintercept = 0, color = "red")
interest_paid
years_to_pay_off