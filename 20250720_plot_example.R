library(tidyverse)
library(dplyr)
a3_deg <- seq(from = 0, to = 180, by = 1) #Angle of f3 in degrees measured away from optimal direction
a3_rad <- a3_deg*(2*pi)/360 #Angle of f3 in radians measured away from optimal direction
f1 <- 300
f2 <- 400
f3 <- 400*cos(a3_rad)
d1 <- .75
d2 <- 2.5 #seq(from = 0, to = 3, by = 0.1)
d3 <- 2.5
my_torques <- data.frame(a3_deg = a3_deg, a3_rad = a3_rad, T1 = f1*d1, T2 = f2*d2, T3 = f3*d3)
#my_torques <- data.frame(d2 = d2, T1 = f1*d1, T2 = f2*d2, T3 = f3*d3)
my_torques2 <- pivot_longer(data = my_torques, cols = c(T1, T2, T3), names_to = "Ts", values_to = "Torques")
my_torques2$Ts <- as.factor(my_torques2$Ts)
my_torques2
ggplot(data = my_torques2, mapping = aes(x = a3_deg, y = Torques, colour = Ts)) +
      geom_point(show.legend = T)


