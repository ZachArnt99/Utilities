# Investment Parameters
principal <- 200650        # Initial investment
annual_rate <- 0.04        # 4% annual interest rate (APR)
monthly_contribution <- 650 # Monthly additions
years <- 20                # Investment period in years
compounding_periods <- 4 * 24 # Compounded hourly, so 24 * 365 hours in a year / (12 months)
# We need to re-evaluate the number of compounding periods if we want to be precise.
# The problem statement states hourly compounding, but then provides monthly contributions.
# So, we need to be consistent.
# Let's be consistent with the compounding frequency for the principal.

# Hourly compounding
n_hourly <- 24 * 365 * 1   # Number of compounding periods per year (hourly)
total_compounding_periods <- n_hourly * years

# Future Value of the Principal
fv_principal <- principal * (1 + annual_rate / n_hourly)^(total_compounding_periods)

# Future Value of the Monthly Additions (Annuity Due)
# Because the contributions are monthly and we are compounding hourly, it becomes a bit more complex.
# We will simplify and treat the contributions as being added at the end of each month.

# Number of monthly contributions
n_months <- years * 12

# Interest rate per month (assuming the 4% is the nominal rate for the entire year)
monthly_rate <- annual_rate / 12

# Future value of an annuity (ordinary annuity)
# This calculates the future value of a stream of identical payments
fv_annuity <- monthly_contribution * (((1 + monthly_rate)^n_months - 1) / monthly_rate)

# The total future value is the sum of the future value of the principal and the future value of the annuity.
total_investment_value <- fv_principal + fv_annuity

# Display the result
print(paste("The total value of the investment after 20 years is: $", round(total_investment_value, 2)))

# --- Explanation ---
# P = Principal Amount (200,650) [1]
# r = Annual Interest Rate (0.04) [1]
# n = Number of times interest is compounded per year (24*365 for hourly) [1]
# t = Number of years (20) [1]
# The formula for the future value of a single sum is: FV = P(1 + r/n)^(nt) [1]

# For the monthly additions (annuity):
# PMT = Periodic Payment (650) [1]
# i = Periodic interest rate (annual_rate / 12) [1]
# N = Total number of periods (years * 12) [1]
# The formula for the future value of an ordinary annuity is: FV = PMT [((1 + i)^N - 1) / i] [1]