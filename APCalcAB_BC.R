x <- 8
y <- -6
(y - x^2/y)/(y^2)
14/108
x <- 8
(2/3)*x^(-2/3)
1/6
12*2^3
y <- -1
3*(y^2+7)^(2/3)/4
39^2-36^2
sqrt(225)
15^2+36^2
39^2
-2*36*10/30
8^2+15^2
17^2
-8/17
15^2+20^2
2*15*5+2*20*8
470/50
21^2
29^2
841-441
2*20*7
280/2/21
20/3
2.5^2+5*(-2.5)
50/-6.25
x <- c(1,3,5)
ab <- x^3+2
ab
sum(2*ab)
2*127+2*29+6
seq(from = 0, to = pi/3, by = pi/3/6)
pi/36
pi/18
2*pi/18
h <- c(3,6,4,8,12)
x <- c(2,2,2,2,2 )
ab <- h*x
ab
vals <- c(mean(ab[1:2])/2, mean(ab[2:3])/2, mean(ab[3:4])/2, mean(ab[4:5])/2)
ans <- sum(vals*2)
ans
x <- c(4,9)
ab <- 2*x^(3/2)
x <- c(3,4)
cd <- x^2-8*x
diff(ab)+diff(cd)

x <- c(-pi/2,0)
ab <- sin(x)
x <- c(0,1)
cd <- x-x^2
diff(ab)+diff(cd)

x <- c(-1,0)
ab <- 3*x^2-x
x <- c(0,1)
cd <- x^3-x
diff(ab)+diff(cd)

x <- c(4,0)
ab <- x^(2)-6*x
diff(ab)

x <- c(6/pi,2/(3*pi))
ab <- exp(x^2+x)
diff(ab)

x <- c(0,1)
ab <- -sin(x^(-1))
diff(ab)

x <- c(0,(pi/3))
ab <- -(1/4)*(cos(x))^4
diff(ab)

-.25*((1/16)-1)
-15/(4*16)
15/(4*16)
4*16
12*12
sqrt(148)
148/4
24^2
148/4
78/3
78/3
x <- c(2,4)
ab <- 8*x - (1/2)*x^4
diff(ab)/2

x <- c(4,8)
ab <- log(x)
diff(ab)/4
log(2)/4

x <- c(0,6)
ab <- -x^3/3 + 3*x
diff(ab)/(x[2]-x[1])

x <- c(2,6)
ab <- x^3 + 2*x^2
diff(ab)/(x[2]-x[1])

x <- c(5,12)
ab <- (2/3)*x^(3/2)
diff(ab)/(x[2]-x[1])

x <- c(0,6)
ab <- -x^3/3 + 3*x
diff(ab)/(x[2]-x[1])

x <- c(-6,-1)
ab <- -cos(x)
diff(ab)/(x[2]-x[1])
(cos(6)-cos(1))/5

x <- c(-1,3)
ab <- 14*x - 2*x^3
diff(ab)/(x[2]-x[1])

x <- c(-1,3)
ab <- x^4/4 - 9/2*x^2
diff(ab)/(x[2]-x[1])

x <- c(-2,7)
ab <- sin(x)
diff(ab)/(x[2]-x[1])
(sin(7)+sin(2))/9

x <- c(-5,9)
ab <- ((3/4)*(x)^(4))^1/3
diff(ab)/(x[2]-x[1])

x <- c(0,3)
ab <- pi*((1/45)*x^5 - (11/9)*x^3 + 4*x^2)
diff(ab)
3^5
11*3^3
4*3^2
9*5
297*5
36*45
243-1485+1620
14*8
8*14/3
8*14
8*4/3
8*4
x <- .5
y <- 0
step <- 0.5
slope <- 3
y <- y + slope*step 
x <- x + step
slope <- 2
y <- y + slope*step 
x <- x + step
slope <- -1
y <- y + slope*step 
x <- x + step
slope <- -2
y <- y + slope*step 
x <- x + step

x <- 2
y <- 3
step <- 1
slope <- x + 3*y
y <- y + slope*step 
x <- x + step
slope <- x + 3*y
y <- y + slope*step 
x <- x + step
slope <- x + 3*y
y <- y + slope*step 
x <- x + step
slope <- x + 3*y
y <- y + slope*step

t <- 3
-18*t+8
N <- 20*10^6
rate <- N*(90000-3*N/20000)
3*2500/2
4*cos(5*theta)*(5)*cos(theta)
4*sin(5*theta)*(-sin(theta))
4*sin(5*theta)*cos(theta)
4*-sqrt(3)*.5
4*sin(5*theta)*sin(theta)
4*sqrt(3)/2*.5

#theta
theta <- pi/6

#X stuff
xcoord <- 4*sin(theta)*cos(theta) #x coordinate
dxdtheta <- 4*cos(theta)*cos(theta) + 4*sin(theta)*-sin(theta) #dx/dtheta
checkdxdtheta <- 4*sqrt(3)/2*sqrt(3)/2 + 4*(1/2)*(-1/2)

#Y stuff
ycoord <- 4*sin(theta)*sin(theta) #y coordinate
dydtheta <- 4*cos(theta)*sin(theta) + 4*sin(theta)*cos(theta) #dy/dtheta
checkdydtheta <- 4*sqrt(3)/2*(1/2) + 4*(1/2)*sqrt(3)/2 

#Line stuff
m <- dydtheta/dxdtheta
4*sqrt(3)/2*1/2

n <- 10
(n+5)/(n-3)
15*6-14*7
12/1.5
8/(2/3)
p <- 2/3
n <- c(1,2,3,4,5,6,7,8)
ab <- 1/n^p
ab[5]/ab[4]
15*6-14*7
6*7
8*7-8*8
-8/(7*8)
1/7
ab <- 2^(1/n)
n <- seq(1:100)
ab[5]/ab[4]
n <- c(7,6)
ab <- (n^2+1)/(n+5)
diff(ab)
n <- 8
ab <- 2 + 3*n/(n + 7) 
n <- 6
ab <- (n^2-3)/(n^3+4)
n <- 1:100
ab <- 1/n^(3/2)
which(ab<.001)
bc <- c(1,ab)
cd <- diff(bc[1:10],ab[1:10])
ab[99]
ab[100]
n <- 4 
ab <- -1^(n+1)/factorial(2*n+1)
n <- 1:1000
ab <- 1/n^2
which(abs(ab)<=.001)
n <- seq(0,2)
ab <- (-1)^(n+1)/factorial(2*n)
n <- 3
1^(-5/2)
4^(-3/2)
.125/8
1/64
360/(4*3*2)
n <- seq(1:101)
ab <- (-1)^(n+1)/n^4
which(abs(ab)<=.0001)
ab[10]
n <- seq(0:3)
ab <- (-1)^(n+1)/factorial(2*n)
ab[3]
n <- seq(1:1001)
ab <- (-1)^(n+1)/n
which(abs(ab)<=.001)
n <- seq(1:100)
ab <- (-1)^(n+1)/n^3
which(abs(ab)<=.001)
2^3/factorial(4)
1/(4*sqrt(4^3))
1/(16*sqrt(2))
1/32
n <- 1:100
b <- 0.4
ab <- exp(2)*(0.55)^(n+1)/factorial(n+1) 
which(abs(ab)<0.001)
exp(-0.8)

n <- 1:10
ab <- exp(-0.8)*0.8^(n+1)/factorial(n+1)
which(abs(ab)<0.001)

n <- 1:10
ab <- 0.95^(n+1)/factorial(n+1)
which(abs(ab)<.001)

n <- 1:10
ab <- 0.5^(n+1)/((n+1)*2^(n+1))
which(abs(ab)<.001)

n <- 1:10
ab <- 0.4^(n+1)/factorial(n+1)
which(abs(ab)<0.001)

n <- 1:10
ab <- exp(2)*0.55^(n+1)/factorial(n+1)
which(abs(ab)<0.001)

n <- 1:10
ab <- (pi/12)^(n+1)/factorial(n+1)
which(abs(ab)<0.001)

n <- 1:10
ab <- (-1)^(n-1)*factorial(n-1)*0.5^(n+1)/(2^n)/factorial(n+1)
which(abs(ab)<0.001)

n <- 1:10
ab <- exp(2)*0.55^(n+1)/factorial(n+1)
which(abs(ab)<0.001)

n <- -50:50
ab <- (7*n+45+14/n)/(1+7/n)
which(abs(ab)<1)

n <- 1:50
ab <- (-4)*n/(2*n+2)
abs(ab[10]/ab[9])

n <- 1:1000
ab <- (1)^n/(n*2^n)
tail(ab)
n[1000]
factorial(0)
-1^0
3^0
factorial(0)
(sqrt(log(3)))^2
(log(3))^2
((log(3))^3/3)/((log(3))^2/2)
((log(3))^4/4)/((log(3))^3/3)

n <- seq(from = 2, to = 5000, by = 2)
x <- log(3)
g <- factorial(1:2500)
ab <- x^n/g
sum(ab)
pi*2/3
exp(1)

ab[10]/ab[9]
ab[50]/ab[49]
(log(3))^2
exp(0)
-1^0

n <- 1:50
ab <- (n+2)/(2^n*(n+1))
sum(ab)
ab[9]/ab[8]
(-1)^0/5^0
.25/.75
(-2)^0
n <- 0
ab <- (-1)^n*x^(2*n+1)/factorial(2*n)
factorial(0)
.25/(1-.25)

x <- 1:100000
ab <- 2*x^.5
ab[99999]-ab[99998]
x <- 3
ab <- sqrt(2*x-5)+1
x <- 2
ab <- (x^4 - 4*x^3 + 4*x^2)/(x-2)
x <- -3
(4+sqrt(2*x+22))/-2
x <- 2
y <- 4
ab <- (1-2*y)/(2*x-2*y)
9/4
7/4
sqrt(0)
sqrt(.000001+1)
x <- 1
sqrt(2*x)
sqrt(-x+1)

x <- 2
(1/3)*(x^2-2*x+8)^(-2/3)*(2*x - 2)

x <- -1/6
-4/sqrt(1-16*x^2)
-12/sqrt(5)

x <- 3
81-18*x+x^4
pi^2*(1+cos(pi))/2

t <- 4
100*exp(0.4*t)*0.4

a <- 13
b <- 10
da_dt <- 8
db_dt <- 7
ab <- 0.5*(a^2+b^2)^(-.5)*(2*a*da_dt+2*b*db_dt)

-3+4*.1
.5*(25-16)^(-.5)*(-8*6)
sqrt(25-16)

db_dt <- 6
L <- 5
h <- 3
b <- 4
dh_dt <- 0.5*(L^2 - b^2)^(-.5)*(-2*b*db_dt)
dA_dt <- 0.5*(db_dt*h + b*dh_dt)

r <- 8
h <- 3
dr_dt <- -9
dh_dt <- 2
dSA_dt <- 2*pi*2*r*dr_dt + 2*pi*(dr_dt*h + r*dh_dt)
-310*pi

a <- 10
b <- 24
da_dt <- 0
db_dt <- -13
dc_dt <- 0.5*(a^2 + b^2)^(-0.5)*(2*a*da_dt + 2*b*db_dt)

m1 <- 54
m2 <- 56
m3 <- 57
ma <- 35.45
p1 <- .059
p2 <- .918
p3 <- .023
am <- m1*p1+m2*p2+m3*p3
p1 <- (ma - m2*p2)/m1

m1 <- 24
m2 <- 25
m3 <- 26
p1 <- .79
p2 <- .10
p3 <- .11
am <- m1*p1+m2*p2+m3*p3
p1 <- (ma - m2*p2)/m1
sol <- 3*10^8
lambdas <- c(10^3, 10^-2, 10^-5, 0.5*10^-6, 10^-8, 10^-10, 10^-12)
fs <- sol/lambdas
fs

Cl <- 2
Na <- 1
Br <- 1

1/(32.065/3.21)*6.022*10^23

m <- 69000
am <- 196.97
m/am


m <- 0.0176
am <- 183.84
m/am * 6.022*10^23


m <- .0108*39.088
am <- 196.97
m/am


m <- .576*6.022*10^23
am <- 196.97
m/am


m <- .556*26.982
am <- 196.97
m/am

mH <- 1.0078*6
(27.668-mH)/10.8
5.89/.0348
108+14+16*3


mC <- 8*12.01
mH <- 18*1.008
mO <- 4*15.999
moles_octane <- 37200/sum(mC,mH)
moles_CO2 <- moles_octane*8
molar_mass_CO2 <- 1*12.01 + 2*15.999
mass_of_CO2 <- moles_CO2*molar_mass_CO2
2.75*6.022*10^23*4

mm_Ag <- 107.87
mm_S <- 32.065
mm_Ag2S <- 2*mm_Ag+mm_S 
moles_Ag2S <- 1.45/mm_Ag2S
moles_Al <- (2/3)*moles_Ag2S
mm_Al <- 26.982
mass_Al <- moles_Al*mm_Al

moles_AG2S <- 
mCu <- 1*63.546
mO <- 4*15.999
mS <- 1*32.065
sum(mCu,mO,mS)

mm_Ca <- 40.078
mm_C <- 12.011
mm_O <- 15.999
mm_CaO <- mm_Ca + mm_O
moles_CaO <- 778/mm_CaO
mm_CaCO3 <- mm_Ca + mm_C + mm_O*3
moles_CaCO3 <- moles_CaO
mass_CaCO3 <- moles_CaCO3*mm_CaCO3

mm_Cl2 <- 35.453*2
mm_Cl <- 35.453
mm_H <- 1.0078
moles_Cl2 <- 65.3/mm_Cl2
moles_HCl <- 2*moles_Cl2
mm_HCl <- mm_H+mm_Cl
mass_HCl <- moles_HCl*mm_HCl

mm_Fe <- 55.845
mm_O <- 15.999
mm_Al <- 26.982
mm_Fe2O3 <- mm_Fe*2+mm_O*3
mass_Fe2O3 <- 125
moles_Fe2O3 <- mass_Fe2O3/mm_Fe2O3#moles_Al/2
moles_Al <- 50/mm_Al
moles_Fe2O3 <- moles_Al/2#mass_Fe2O3/mm_Fe2O3
rr <- moles_Al/moles_Fe2O3
moles_Fe <- 2*moles_Fe2O3
mass_Fe <- moles_Fe*mm_Fe

mm_C <- 12.011
mm_O <- 15.999
mm_S <- 32.065
mm_N <- 14.007
mm_CS2 <- mm_C + mm_S*2
mm_N2O <- mm_N*2 + mm_O
moles_CS2 <- .065
moles_N2O <- .110
rr <- moles_N2O/moles_CS2

moles_WO3 <- 8.48
xs <- seq(from = 2.4, to = 3.2, by = 0.01)
length(xs)
y <- log(xs)/xs
max(y)
which(y==max(y))
xs[33]
exp(1)
multiples <- c(3,1,4)
values <- c(5,7,11)
ab <- multiples*values
sum(ab)
t <- c(10,-7)
f <- (t^2)/2-(t^3)/3
f[1]-f[2]
1/6
422*6
-2533/6
10^2-10^-3
(-6*25^(3/2))/1.5-((-6*0^(3/2))/1.5)
1/4.5
1/14
(8^(2/3))*3/2
0^(2/3)
3*12^2+12-(3*3^2+3)
log(9)-log(3)
log(3)
1+4-(4-8)+4*4^(3/2)-4
xs <- c(1,3,5)
fs <- (xs-3)^2
sum(fs*2)

P1 <- 142
V1 <- 30
T1 <- 273+25
n1 <- P1*V1/T1
V2 <- 8
T2 <- 273+19
P2 <- n1*T2/V2
130*.21

P1 <- 1.05
V1 <- 2
T1 <- 273+30
R <- .0826
n1 <- P1*V1/(R*T1)
mass_g <- 29*n1

P1 <- 11
V1 <- 18
T1 <- 273+10
R <- .0826
n1 <- P1*V1/(R*T1)
T2 <- 273+30
P2 <- n1*R*T2/V1

1760/25/78.6
sh <- .374
m_gallium <- 11.3 
delta_T <- 29.8-4.5
m_gallium*.374*delta_T

sh <- .221 #J/(g C)
mp <- 237 #C 
mass <- 3.23 #g
delta_T <- 237-22.2
energy <- mass*.221*delta_T

T1 <- 22.1 #C
T2 <- 28.8 #C
shc <- 4.18 #J/(g°C)
m <- 200
E <- 4.18*200*(T2-T1)

T1 <- 21.1 #C
T2 <- 23.8 #C
shc <- 4.18 #J/(g°C)
mn <- 42 #g
mw <- 125 #g
E <- shc*mw*(T2-T1)
shcn <- E/mn/(100-T2)

T1 <- 22.9 #C
T2 <- 24.6 #C
shcw <- 4.18 #J/(g°C)
mc <- 50 #g
mw <- 200 #g
E <- shcw*mw*(T2-T1)
shcc <- E/mc/(99.8-T2)

mass <- 12.3 #g
mm <- 95.21 #g/mol
moles <- mass/mm
vol <- .75
M <- moles/vol

mass <- .66 #g
mm <- 58.44 #g/mol
moles <- mass/mm
vol <- .15
M <- moles/vol
.225*158.04
.27/.500*.475
.27*.5/.475

dT <- 98.4-24.7
E <- 352
mass <- 12.5
E/(mass*dT)

shc <- .95 #J/(g°C)
mass <- 10.3 #g
dT <- 7.3 #°C
E <- shc*dT*mass

mb <- 214.2
mmb <- 342.68
molesb <- mb/mmb
mo <- 71.7
mmo <- 32.00
moleso <- mo/mmo
molesb/moleso
molesc <- 3
mmc <- 63.55
molesc*mmc*molesb

mmH <- 1.0078
mmC <- 12.011
(114.224-18*mmH)/mmC

mmAl <- 26.982
.556*mmAl

2.75*4*6.022*10^23

mmwater <- 18.016
mwater <- 132
moleswater <- mwater/18.016
molescac2 <- moleswater/2
mmcac2 <- 64.1
masscac2 <- molescac2*mmcac2

mmct <- 153.81
massct <- 795
molect <- massct/mmct

32.4*6.022*10^23

P1 <- 1.60
P2 <- 2.30
V1 <- 0.675
T1 <- 273+25
T2 <- 273+15
V2 <- P1*V1*T2/(T1*P2)

dT <- 7.3
mass <- 10.3
shc <- .95
shc*mass*dT

mass <- 300
shc <- 4.18
dT <- 30.8-22
E <- shc*300*dT

mCu <- 50
mwater <- 200
shcwater <- 4.18
Tw1 <- 22.9
Tw2 <- 24.6
dTwater <- Tw2-Tw1
Tc1 <- 99.8
Tc2 <- 24.6
dTCu <- Tc1-Tc2
E <- shcwater*mwater*dTwater
shcCu <- E/mCu/dTCu

62.5/39.998/2
237-93

ni <- 239-94+1
pi <- 94
nf <- 96-38+140-56 + 4

k <- log(5.5/4.4)/5
C <- log(4.4)
exp(9*k + C)

xs <- c(0,1,2)
ys <- c(1,-1,-2)
dydx <- 2*xs - 3*ys
exp(-0)
acos(cos(pi/3))
pi/3
64*3-128
64/3
64-64/6
21.33333333*4
32-64/6
32*6
192-64
128*4/6
128*4

22+8/pi #4 to 6
-1*(2-8/pi) + 8/pi - 2
75+0.1/log(0.1)

ts <- c(4,0)
change <- 25*log(abs(ts+3))
abs(diff(change))
25*log(7/3)
-5*25/2 - -5*9/2 - 2
16*16/64

x <- -1
y <- 4*x^4 + 3*x^2 - 7*x - 40
ts <- c(3,4)
soft <- (2*ts^3)/3 - (5*ts^2)/2
9+diff(soft)
-8.08688/5

x <- 1
C <- -(x^6 + 7*x) + 30
y <- x^6 + 7*x + C

x <- 5
y <- -5*exp(x) + 22

C <- 20 - 25
y <- -50*5^(-2)/(-2) + C

C <- 9 + 10/5 - 8/4
y <- -10
sin(2*pi/3)
sin(4*pi/3)

theta <- pi/3
dydtheta <- 20*cos(5*theta)*sin(theta) + 4*sin(5*theta)*cos(theta)
dxdtheta <- 20*cos(5*theta)*cos(theta) - 4*sin(5*theta)*sin(theta)
dydtheta/dxdtheta
sqrt(3)/2
4*sin(5*theta)*sin(theta)
4*sin(5*theta)*cos(theta)
sqrt(3)

theta <- pi/6
dydtheta <- 6*cos(theta)*sin(theta) + (2 + 6*sin(theta))*cos(theta)
dxdtheta <- 6*(cos(theta))^2 +        (2 + 6*sin(theta))*(-sin(theta))
2*pi
dydtheta/pi
6*(cos(theta))^2
(2 + 6*sin(theta))
-sin(theta)
6*cos(theta)*sin(theta)
cos(theta)
sqrt(3)/2
sin(theta)
(2 + 6*sin(theta))
cos(theta)
6.5*sqrt(3)/2
4*sqrt(3)/2
(cos(theta))^2 * 6
-sin(theta)
8*sqrt(3)/2
8/2/2
2*sqrt(3)
dydtheta/dxdtheta
6^3+4
(6^2-3) / (6^3 + 4)
33/220
(6-3/16)-(6-3/9)
6*16
9*16*6-3*9-6*9*16+3*16
21/(16*9)
16*9
144/3
7/48
n <- 1:7
ab <- .4^(n+1)/(n+1)
which(ab<0.001)
(log(0.4))/(log(1.4)*log(0.001))
bc <- log(0.4)/log(.001)
ns <- 1:30
ab <- log(ns)/ns
which(ab<bc)

n <- 1:8
ab <- 0.95^n/factorial(n)
which(ab<0.001)
6^3+4
1/factorial(6)

ns <- 1:5
ab <- (pi/12)^ns/factorial(ns)
which(ab<.001)
15*6-14*7
7*6
1/(1-(10/11))

ns <- 1:100
ab <- (-1)^(ns+1)/(ns)^2
which(abs(ab)<0.001)

ns <- 1:1002
ab <- (-1)^(ns+1)/ns
head(which(abs(ab)<=.001))
abs[1000]

ns <- 0:4
ab <- (-1)^(ns+1)/factorial(2*ns)
ab[5]

n <- 1:50
ab <- (-1)^(n+1)/n^2
which(abs(ab)<=0.001)

n <- 1:101
ab <- (-1)^(n+1)/n
which(abs(ab)<=0.001)
tail(ab)

n <- 1:10
ab <- (-1)^(n+1)/n^3
which(abs(ab)<=0.001)
tail(ab)

n <- 0:4
ab <- (-1)^(n+1)/factorial(2*n)
tail(ab)
ab
5^0
(-1)^0
factorial(0)

moles <- 1.97*10^22/(6.022*10^23)
g <- moles*107.87

mCl <- 35.45
mCa <- 40.08
mCaCl2 <- mCa+2*mCl
moles <- 27.4/mCaCl2
units <- moles*6.022*10^23

H <- 1.008
C <- 12.01
O <- 16.00
la <- C*3+H*6+O*3
5730/la

Si <- 28.09
92.8*10^-3 / Si * 6.022*10^23

ms <- c(89.905, 90.906, 91.905, 93.906, 95.909)
as <- .01*c(51.45,  11.22,  17.15,   17.38,   2.80)
mstimesas <- ms*as
sum(mstimesas)

ms <- c(289.2, 288.2, 287.2)
counts <- c(6,  2,     2)
ab <- counts/sum(counts)
mm <- sum(ms*ab)

C <- 12
H <- 1
Cguesses <- c(C,    C,  2*C, C*2)
Hguesses <- c(3*H, 4*H,  6*H, H*8)
guessmasses <- Cguesses+Hguesses
Cratios <- Cguesses/guessmasses
Hratios <- Hguesses/guessmasses
Cratios
Hratios

C <- 12.011
H <- 1.0078
O <- 15.999
CO2 <- C + O*2
H20 <- H*2 + O
molesCO2 <- 66.0/CO2
molesH20 <- 36.0/H20
initialH <- 2*molesH20
initialC <- molesCO2

C <- 12.011
H <- 1.0078
O <- 15.999
sample <- 152.0
molesC <- 48.0/C
molesH <- 8.0/H
molesO <- 96.0/O

C <- 12.011
H <- 1.0078
O <- 15.999
CH4 <- C + H*4 
CH2O <- C + H*2 + O
CO <- C + O
CO2 <- C + O*2
ms <- c(CH4,CH2O,CO,CO2)
cratios <- C/ms 

C <- 12.011
H <- 1.0078
N <- 14.007
sample <- 118.0
molesC <- 72.0/C
molesH <- 18.0/H
molesN <- 28.0/N

aa <- 176.12
molesaa <- .0109
sampleaa <- molesaa*aa
sample <- 2.70
paa <- sampleaa/sample

sample <- 1.60
sampleCa <- sample*.378
Ca <- 40.078
molesCa <- sampleCa/40.078
CaCO3 <- 100.09
sampleCaCO3 <- molesCa*CaCO3

Zn <- 65.380
O <- 15.999
sample <- 3.0
molesZnO <- .010
ZnO <- Zn + O
sampleZn <- molesZnO * Zn
Zn/sample

Rb <- 85.468
Cl <- 35.453

C <- 12.011
O <- 15.999
H <- 1.0078
CO2 <- C + O*2
H2O <- H*2 + O
prodCO2 <- 11.0
prodH2O <- 4.5
molprodCO2 <- prodCO2/CO2
molprodH2O <- prodH2O/H2O

atoms <- 7.35*10^23
Bi <- 208.98
moles <- atoms/(6.022*10^23)
sampleBi <- moles*Bi

molesni <- .0122
ni <- 122.13
sampleni <- molesni*ni
sample <- 1.90
mp <- sampleni/sample

C <- 12.011
H <- 1.0078
N <- 14.007
sample <- 118.0
molesC <- 72.0/C
molesH <- 18.0/H
molesN <- 28.0/N

F <- 19.00
Sr <- 87.62
sample <- 33.8
SrF <- Sr + F*2
moles <- sample/SrF
moles*6.022*10^23

A <- 6.022*10^23
Ga <- 69.72      
sample <- .0272
sample/Ga*A

C <- 12.011
H <- 1.0078
O <- 15.999
asp <- C*9 + H*8 + O*4
sample <- 7890
moles <- sample/asp

Bi <- 208.98
moles <- 7.35*10^23/A
Bi*moles

factor <- 0.08206 #L atm mol^-1 K^-1
V <- 2.00 #L
T <- 273+25 #K
P <- 5.60 #atm
V*P/T/factor
2+7+1.5
1.5*2/10.5

C <- 12
H <- 1
F <- 19
N <- 14
O <- 16
mCH4 <- C + H*4
mNF3 <- N + F*3
mO2 <- O*2 

V <- 11.1
P <- 204
T <- 273+24
R <- .08206
P*V/(R*T)

sucrose <- 342.3
moles <- 50/sucrose
moles/.245

moles <- 87.4/109.94
V <- 1.15
M <- 2*moles/V
A <- .1*.025
B <- .3*.01
C <- .2*.02
D <- .2*.01

204*11.1/((273+24)*.08206)
158*1.5
18/90.04
.1999112/.405
2*60.3/171.35/1.75

h <- 6.626*10^(-34)
c <- 2.998*10^8
E <- h*c/(2.17*10^-7)
ab <- 6.33*10^5 /(6.022*10^23)
lambda <- h*c/ab
lambda*10^9

A <- .726/(5.15*10^(-6))
5*10^(-4)*.12
.849/(2.5*10^(-4))
.3*.2
.726/(5.15*10^(-6))

C <- 12.011
O <- 15.999
H <- 1.0078
Cl <- 35.453
C2H5Cl <- C*2+H*5+Cl
C2H4 <- C*2+H*4
HCl <- H+Cl

CO <- C+O
H2 <- H*2
CH3OH <- C+H*3+O+H
sampleCO <- 56000
sampleH2 <- 6000
molesCO <- sampleCO/CO
molesH2 <- sampleH2/H2
molesCH3OH <- molesH2/2

1.16/58

acid <- .728 #g
molesOH <- .215*.0451
molesacid <- molesOH/2
molarmassacid <- .728/molesacid
26.09-6.09

molesMNO4neg <- .02*.030
molesH2C2O4 <- molesMNO4neg/2*5

(.532-.654)/60/2

n <- 1:10
errors <- (-1)^(n-1)*factorial(n-1)/(2^n*factorial(n))*(1.7-2)^n
which(abs(errors)<=.001)

n <- 1:1000
errors <- (-1)^(n+1)/n
which(abs(errors)<=.001)

n <- c(6,5)
ab <- (3*n + 2)/(2*n)
diff(ab)
1/30
ab[1]-ab[2]

n <- 4
EB <- (-1)^(n+1)/factorial(2*n)
abs(EB)

n <- 1:10
errors <- .99^n/factorial(n)
which(abs(errors)<.001)

n <- 1:1000000
errors <- ((-1)^(n+1))/sqrt(n)
which(abs(errors)<=.001)
errors[10^6]

n <- 9
S <- 6-3/(n^2)
6*81
486-3
483/81

n <- 1:10
errors <- exp(1.3)*(0.3)^n/(factorial(n))
which(abs(errors)<=.001)
exp(1)
factorial(2)
factorial(4)
factorial(6)

n <- 4
(-1)^(n+1)/factorial(2*n+1)

errors <- x^n/factorial
points <- c(0,-.1)
M1 <- max(c(cos(points))) 
M2 <- max(c(-sin(points))) 
M3 <- max(c(-cos(points)))
M4 <- max(c(sin(points)))

n <- 1:10
errors <- (.1)^(n+1)/factorial(n+1)
which(abs(errors)<0.001)

M <- exp(0)
errors <- abs(M*-.95^(n+1)/factorial(n+1))
which(errors<.001)

x <- 1.7
c <- 2
points <- c(1.7,2)
n <- 1:10
M <- numeric()
Errors <- numeric()
for (n in n) {
      Ms <- (-1)^(n)*factorial(n)/(points^(n+1))      # code to be executed repeatedly
      M[n] <- max(Ms)
}

for (n in 1:10) {
      Errors[n] <- M[n]*(x-c)^(n+1)/factorial(n+1)
}
which(abs(Errors)<.001)

x <- 13*pi/12
c <- pi
points <- c(x,c)
M <- numeric()
Errors <- numeric()
for (n in 1:10) {
      #Ms <- (-1)^(n)*factorial(n)/(points^(n+1))      # code to be executed repeatedly
      M[n] <- 1
}

for (n in 1:10) {
      Errors[n] <- M[n]*(x-c)^(n+1)/factorial(n+1)
}
which(abs(Errors)<.001)
