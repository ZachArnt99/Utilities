library(tidyverse)
library(lubridate)
library(ggthemes)
Axl_birthday <- "2017-12-25"
Kaylee_birthday <- "2014-07-20"
Axl_two <- as.Date("2019-12-25")-as.Date("2017-01-01")
Axl_three <- as.Date("2020-12-25")-as.Date("2017-01-01")
Axl_four <- as.Date("2021-12-25")-as.Date("2017-01-01")
Axl_five <- as.Date("2022-12-25")-as.Date("2017-01-01")
Axl_six <- as.Date("2023-12-25")-as.Date("2017-01-01")
Axl_seven <- as.Date("2024-12-25")-as.Date("2017-01-01")
Axl_eight <- as.Date("2025-12-25")-as.Date("2017-01-01")
Kaylee_three <- as.Date("2017-07-20")-as.Date("2017-01-01")
Kaylee_four <- as.Date("2018-07-20")-as.Date("2017-01-01")
Kaylee_five <- as.Date("2019-07-20")-as.Date("2017-01-01")
Kaylee_six <- as.Date("2020-07-20")-as.Date("2017-01-01")
Kaylee_seven <- as.Date("2021-07-20")-as.Date("2017-01-01")
Kaylee_eight <- as.Date("2022-07-20")-as.Date("2017-01-01")
Kaylee_nine <- as.Date("2023-07-20")-as.Date("2017-01-01")
Kaylee_ten <- as.Date("2024-07-20")-as.Date("2017-01-01")
Kaylee_eleven <- as.Date("2025-07-20")-as.Date("2017-01-01")

Axl_heights <- c(31.5, 34.5, 36.75, 37.9, 40.4, 41.4, 45.75, 46.5, 48)
Axl_dates <- as.Date(c("2019-11-06", "2020-07-13", "2021-02-05", "2021-08-27", "2022-08-28", "2022-12-11", "2024-12-29", "2025-05-26", "2026-01-13"))
Axl_days <- Axl_dates - as.Date("2017-01-01")
Axl_ages <- round((Axl_dates - as.Date(Axl_birthday))/365.25,2)

Axl2_days <- Axl2_dates-1254
Axl_ages <- Axl_days
Kaylee_heights <- c(37, 38.25, 38.9, 39.5, 42.5, 43.75, 45.2, 47.4, 48.4, 51, 52.75, 53.25, 57.5, 58.2, 59.9)
Kaylee_dates <-as.Date(c("2017-02-20", "2017-10-21", "2018-01-04", "2018-06-28", "2019-04-22", "2019-11-06", "2020-05-13", "2021-02-05", "2021-08-27", "2022-08-28", "2023-06-25", "2023-07-20", "2024-12-29", "2025-05-26", "2026-01-13"))
Kaylee_days <- Kaylee_dates - as.Date("2017-01-01")
Kaylee_ages <- round((Kaylee_dates - as.Date(Kaylee_birthday))/365.25,2)

Axl <- data.frame(
      Date = Axl_days, 
      Height = Axl_heights,
      Name = "Axl")
Axl_2 <- data.frame(
      Date = Axl2_days, 
      Height = Axl_heights,
      Name = "Axl_2")
Kaylee <- data.frame(
      Date = Kaylee_days,
      Height = Kaylee_heights,
      Name = "Kaylee")
Axl_inches_per_year <- 2.35
#Axl_line <- data.frame(
 #     date = as.Date(c("2016-01-01","2017-01-01","2018-01-01","2019-01-01","2020-01-01","2021-01-01","2022-01-01","2023-01-01","2024-01-01","2025-01-01","2026-01-01")),
#      height = Axl_inches_per_year*x-4713,
#      name = "Axl_ref")
Kaylee_inches_per_year <- 2.6
#Kaylee_line <- data.frame(
#      date = as.Date(c("2016-01-01","2017-01-01","2018-01-01","2019-01-01","2020-01-01","2021-01-01","2022-01-01","2023-01-01","2024-01-01","2025-01-01","2026-01-01")),
#      height = Kaylee_inches_per_year*x-5208,
#      name = "Kaylee_ref")

heights <- rbind(Axl, Kaylee)
Kaylee_slope <- atan(Kaylee_inches_per_year/365)*180/pi
p <- ggplot(heights, aes(
      y = Height, 
      x = Date, 
      color = Name))
p + geom_point() + geom_line() + theme_bw() + scale_color_manual(values = c("red","blue")) + scale_x_continuous(breaks = c(-365,0,365,365*2,365*3,365*4 + 1,365*5 + 1,365*6 + 1,365*7 + 1,365*8 + 2,365*9 + 2), labels = c("2016","2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024","2025","2026")) + scale_y_continuous(
      breaks = seq(from = 30, to = 72, by = 2),
      labels = c("2ft 6in", "2ft 8in", "2ft 10in", "3ft 0in", "3ft 2in", "3ft 4in", "3ft 6in", "3ft 8in", "3ft 10in", "4ft 0in", "4ft 2in", "4ft 4in", "4ft 6in", "4ft 8in", "4ft 10in", "5ft 0in", "5ft 2in", "5ft 4in", "5ft 6in", "5ft 8in", "5ft 10in", "6ft 0in")) + geom_vline(xintercept = Kaylee_three, color =  "blue") + 
      annotate("text",
               x = Kaylee_three, # The x-coordinate of the label (same as xintercept)
               y = 30, # The y-coordinate of the label
               color = "blue", 
               label = "Kaylee is 3", # The text to display
               angle = 90,       # Optional: rotates the text vertically
               vjust = -0.5,     # Optional: adjusts vertical justification
               hjust = 0) +      # Optional: adjusts horizontal justification
geom_vline(xintercept = Kaylee_six, color =  "blue") + 
      annotate("text",
               x = Kaylee_six, # The x-coordinate of the label (same as xintercept)
               y = 30, # The y-coordinate of the label
               color = "blue", 
               label = "Kaylee is 6", # The text to display
               angle = 90,       # Optional: rotates the text vertically
               vjust = -0.5,     # Optional: adjusts vertical justification
               hjust = 0)  +     # Optional: adjusts horizontal justification
      geom_vline(xintercept = Kaylee_nine, color =  "blue") + 
      annotate("text",
               x = Kaylee_nine, # The x-coordinate of the label (same as xintercept)
               y = 30, # The y-coordinate of the label
               color = "blue", 
               label = "Kaylee is 9", # The text to display
               angle = 90,       # Optional: rotates the text vertically
               vjust = -0.5,     # Optional: adjusts vertical justification
               hjust = 0)  +     # Optional: adjusts horizontal justification
      geom_vline(xintercept = Axl_three, color =  "red") + 
      annotate("text",
               x = Axl_three,    # The x-coordinate of the label (same as xintercept)
               y = 30,           # The y-coordinate of the label
               color = "red", 
               label = "Axl is 3", # The text to display
               angle = 90,       # Optional: rotates the text vertically
               vjust = 1.3,      # Optional: adjusts vertical justification
               hjust = 0)  +     # Optional: adjusts horizontal justification
      geom_vline(xintercept = Axl_six, color =  "red") + 
      annotate("text",
               x = Axl_six, 
               y = 30, 
               color = "red", 
               label = "Axl is 6", # The text to display
               angle = 90,    
               vjust = 1.3,   
               hjust = 0) +   
      geom_hline(yintercept = 43.6, color = "red", linetype = 3, linewidth = 1.25) +
      geom_hline(yintercept = 36.3, color = "red", linetype = 3, linewidth = 1.25) +
      geom_hline(yintercept = 37.75, color = "blue", linetype = 3, linewidth = 1.25) +
      geom_hline(yintercept = 45.7, color = "blue", linetype = 3, linewidth = 1.25) +
      geom_hline(yintercept = 53.1, color = "blue", linetype = 3, linewidth = 1.25) + 
      annotate("text",
               x = Kaylee_three, 
               y = 35.4, 
               color = "red", 
               label = "Axl at 3", # The text to display
               angle = 0,    
               vjust = 0,   
               hjust = -0.3) + 
      annotate("text",
               x = Kaylee_three, 
               y = 42.7, 
               color = "red", 
               label = "Axl at 6", # The text to display
               angle = 0,    
               vjust = 0,   
               hjust = -0.3) + 
      annotate("text",
               x = Kaylee_three, 
               y = 38.2, 
               color = "blue", 
               label = "Kaylee at 3", # The text to display
               angle = 0,    
               vjust = 0,   
               hjust = -0.2) + 
      annotate("text",
               x = Kaylee_three, 
               y = 46.3, 
               color = "blue", 
               label = "Kaylee at 6", # The text to display
               angle = 0,    
               vjust = 0,   
               hjust = -0.2) +
      annotate("text",
               x = Kaylee_three, 
               y = 53.8, 
               color = "blue", 
               label = "Kaylee at 9", # The text to display
               angle = 0,    
               vjust = 0,   
               hjust = -0.2) 





            # Optional: adjusts horizontal justification
# Optional: adjusts horizontal justification


#+ scale_x_date(
#      date_breaks = "year", 
#      date_labels = "%Y") + xlab("Years Since January 1st, 2017") + ylab("Height in inches") + geom_abline(slope = (Axl_inches_per_year/365), intercept = -84.6) + annotate("text", label = '2.35" per year', x = as.Date("2021-01-01"), y = 32, angle = 20) + geom_abline(slope = (Kaylee_inches_per_year/365), intercept = -85.83) + ylim(0,60) + annotate(
#            geom = "text", 
#            label = '2.6" per year', 
#            x = as.Date("2021-01-01"), 
#            y = 50, 
#            angle = Kaylee_slope) + theme_bw() 
heights[1,1]
as.Date("2019-12-25")-as.Date("2017-01-01")
