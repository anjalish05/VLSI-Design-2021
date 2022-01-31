 ***AND Gate Netlist***
.include TSMC_180nm.txt
.param SUPPLY = 1.8

**VDD Connections**
vdd 1 0 dc 1.8

**Input Initialization**
Va 2 0 pulse (0 1.8 0 0.1p 0.1p 10n 20n)
Vb 4 0 pulse (0 1.8 0 0.1p 0.1p 20n 40n)

**Connections: drain gate source body CMOSN/CMOSP W L**
**NAND GATE**
**NMOS Connections**
MN1 3 2 5 0 CMOSN W = 1.8u L = 0.18u
MN2 5 4 0 0 CMOSN W = 1.8u L = 0.18u

**PMOS Connections**
MP1 3 2 1 1 CMOSP W = 3.6u L = 0.18u
MP2 3 4 1 1 CMOSP W = 3.6u L = 0.18u

**Inverter**
MN3 6 3 0 0 CMOSN W = 1.8u L = 0.18u 
MP3 6 3 1 1 CMOSP W = 3.6u L = 0.18u 

*Output capacitor*
Cout 6 0 100f

.tran 0.1n 100n

.measure tran trise 
+ TRIG vdd VAL = 'SUPPLY/2' FALL = 1
+ TARG v(6) VAL = 'SUPPLY/2' RISE = 1

.measure tran tfall 
+ TRIG vdd VAL = 'SUPPLY/2' FALL = 2
+ TARG v(6) VAL = 'SUPPLY/2' RISE = 2

.measure tran tpd param = '(trise + tfall)/2' goal = 0

.control 
run 
**plot background color**
set color0 = black 
**grid lines color**
set color1 = white 
**plot 1 color**
set color2 = blue 
**plot 2 color**
set color3 = red 
**plot 3 color**  
set color4 = brown 
set xbrushwidth = 1.5
plot v(6)+4 v(2)+2 v(4)

.endc
.end

