f <- 1 #Force in N
d <- 5 #Perpendicular distance of line of force from center of cylinder (Perpendicular distance from axis of rotation after impulse)
m <- 1 #Mass in kg
r <- 1 #Radius in m
l <- 10 #Length in m
I <- 1/4*m*r^2+1/12*m*l^2 #Moment of inertia about the central diameter of a cylinder
alpha <- f*d/(1/4*m*r^2 + 1/12*m*l^2) #Angular acceleration in rad/s^2
T1 <- I*alpha #Torque applied by force f
a <- f/m
f <- m*a #Force applied to the cylinder
T2 <- f*d 

