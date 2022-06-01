***XOR Gate Netlist***
.include TSMC_180nm.txt

vdd 1 0 dc 1.8

Va 2 0 pulse (0 1.8 0 0.1p 0.1p 10n 20n)
Vb 4 0 pulse (0 1.8 0 0.1p 0.1p 20n 40n)

**Connections: drain gate source body CMOSN/CMOSP W L**

**Inverter Gate**
*For Input A*
MP1 3 2 1 1 CMOSP W = 3.6u L = 0.18u
MN1 3 2 0 0 CMOSN W = 1.8u L = 0.18u
*For Input B*
MP2 5 4 1 1 CMOSP W = 3.6u L = 0.18u
MN2 5 4 0 0 CMOSN W = 1.8u L = 0.18u

**Main Gate**
MP3 6 2 1 1 CMOSP W = 3.6u L = 0.18u
MP4 6 4 1 1 CMOSP W = 3.6u L = 0.18u

MP5 7 3 6 1 CMOSP W = 3.6u L = 0.18u
MP6 7 5 6 1 CMOSP W = 3.6u L = 0.18u

MN3 7 2 8 0 CMOSN W = 1.8u L = 0.18u
MN4 8 4 0 0 CMOSN W = 1.8u L = 0.18u

MN5 7 3 9 0 CMOSN W = 1.8u L = 0.18u
MN6 9 5 0 0 CMOSN W = 1.8u L = 0.18u

Cout 7 0 100f

.tran 0.1n 100n

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
set xbrushwidth = 3.5
plot v(7)+4 v(4)+2 v(2)

.endc
.end
