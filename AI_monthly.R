# Define the parameters
principal <- 200650       # Initial investment
monthly_addition <- 650   # Monthly addition
annual_rate <- 0.04       # Annual interest rate (4% APR)
compounding_frequency <- 12 # Monthly compounding
years <- 20               # Example: Calculate for 10 years (adjust as needed)

# Calculate the monthly interest rate
monthly_rate <- annual_rate / compounding_frequency

# Calculate the total number of compounding periods
total_periods <- years * compounding_frequency

# Initialize the future value
future_value <- principal

# Loop through each period to calculate the compounded value
for (i in 1:total_periods) {
      future_value <- future_value * (1 + monthly_rate) + monthly_addition
}

# Print the result
cat("The future value of the investment after", years, "years is:", round(future_value, 2), "\n")

