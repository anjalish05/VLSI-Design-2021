**CLA bit adder**
.include TSMC_180nm.txt
.param SUPPLY = 1.8V

**VDD Connections**
vdd 1 0 dc SUPPLY

**Input Initialization**
Va1 2 0 'SUPPLY'
Vb1 3 0 'SUPPLY'
Va2 10 0 'SUPPLY'
Vb2 11 0 'SUPPLY'
Va3 18 0 'SUPPLY'
Vb3 19 0 'SUPPLY'
Va4 26 0 'SUPPLY'
Vb4 27 0 'SUPPLY'

**(Connections: drain gate source body CMOSN/CMOSP W L)**

***Propagate Signal For Various Inputs***

**For Inputs A1 and B1**
**Inverter Gate**
*A1 = 2, A1' = 4; B1 = 3, B1' = 5*
MP1 4 2 1 1 CMOSP W = 1.8u L = 0.18u
MN1 4 2 0 0 CMOSN W = 0.9u L = 0.18u
MP2 5 3 1 1 CMOSP W = 1.8u L = 0.18u
MN2 5 3 0 0 CMOSN W = 0.9u L = 0.18u

*Output: P1 = 7, Inputs: A1 = 2, B1 = 3, Vcc = 1, GND = 0*
MP3 6 2 1 1 CMOSP W = 1.8u L = 0.18u
MP4 6 3 1 1 CMOSP W = 1.8u L = 0.18u
MP5 7 4 6 1 CMOSP W = 1.8u L = 0.18u
MP6 7 5 6 1 CMOSP W = 1.8u L = 0.18u
MN3 7 2 8 0 CMOSN W = 0.9u L = 0.18u
MN4 7 4 9 0 CMOSN W = 0.9u L = 0.18u
MN5 8 3 0 0 CMOSN W = 0.9u L = 0.18u
MN6 9 5 0 0 CMOSN W = 0.9u L = 0.18u
C1 7 0 100f

*For Inputs A2 and B2*
**Inverter Gate**
*A2 = 10, A2' = 12; B2 = 11, B2' = 13*
MP7 12 10 1 1 CMOSP W = 1.8u L = 0.18u
MN7 12 10 0 0 CMOSN W = 0.9u L = 0.18u
MP8 13 11 1 1 CMOSP W = 1.8u L = 0.18u
MN8 13 11 0 0 CMOSN W = 0.9u L = 0.18u

*Output: P2 = 15, Inputs: A2 = 10, B2 = 11, Vcc = 1, GND = 0*
MP9 14 10 1 1 CMOSP W = 1.8u L = 0.18u
MP10 14 11 1 1 CMOSP W = 1.8u L = 0.18u
MP11 15 12 14 1 CMOSP W = 1.8u L = 0.18u
MP12 15 13 14 1 CMOSP W = 1.8u L = 0.18u
MN9 15 10 16 0 CMOSN W = 0.9u L = 0.18u
MN10 15 12 17 0 CMOSN W = 0.9u L = 0.18u
MN11 16 11 0 0 CMOSN W = 0.9u L = 0.18u
MN12 17 13 0 0 CMOSN W = 0.9u L = 0.18u
C2 15 0 100f

*For Inputs A3 and B3*
**Inverter Gate**
*A3 = 18, A3' = 20; B3 = 19, B3' = 21*
MP13 20 18 1 1 CMOSP W = 1.8u L = 0.18u
MN13 20 18 0 0 CMOSN W = 0.9u L = 0.18u
MP14 21 19 1 1 CMOSP W = 1.8u L = 0.18u
MN14 21 19 0 0 CMOSN W = 0.9u L = 0.18u

*Output: P3 = 23, Inputs: A3 = 18, B3 = 19, Vcc = 1, GND = 0*
MP15 22 18 1 1 CMOSP W = 1.8u L = 0.18u
MP16 22 19 1 1 CMOSP W = 1.8u L = 0.18u
MP17 23 20 22 1 CMOSP W = 1.8u L = 0.18u
MP18 23 21 22 1 CMOSP W = 1.8u L = 0.18u
MN15 23 18 24 0 CMOSN W = 0.9u L = 0.18u
MN16 24 19 0 0 CMOSN W = 0.9u L = 0.18u
MN17 23 20 25 0 CMOSN W = 0.9u L = 0.18u
MN18 25 21 0 0 CMOSN W = 0.9u L = 0.18u
C3 23 0 100f

*For Inputs A4 and B4*
**Inverter Gate**
*A4 = 26, A4' = 28; B4 = 27, B4' = 29*
MP19 28 26 1 1 CMOSP W = 1.8u L = 0.18u
MN19 28 26 0 0 CMOSN W = 0.9u L = 0.18u
MP20 29 27 1 1 CMOSP W = 1.8u L = 0.18u
MN20 29 27 0 0 CMOSN W = 0.9u L = 0.18u

*Output: P4 = 31, Inputs: A3 = 26, B3 = 27, Vcc = 1, GND = 0*
MP21 30 26 1 1 CMOSP W = 1.8u L = 0.18u
MP22 30 27 1 1 CMOSP W = 1.8u L = 0.18u
MP23 31 28 1 1 CMOSP W = 1.8u L = 0.18u
MP24 31 29 30 1 CMOSP W = 1.8u L = 0.18u
MN21 31 26 32 0 CMOSN W = 0.9u L = 0.18u
MN22 32 27 0 0 CMOSN W = 0.9u L = 0.18u
MN23 31 28 33 0 CMOSN W = 0.9u L = 0.18u
MN24 33 29 0 0 CMOSN W = 0.9u L = 0.18u
C4 31 0 100f

.tran 0.1n 100n

.control 
run 
 **plot background color**
set color0 = white
**grid lines color** 
set color1 = black 
**plot 1 color**
set color2 = blue  
**plot 2 color**
set color3 = red 
**plot 3 color**  
set color4 = brown 
**plot 4 color**
set color5 = green
set xbrushwidth = 3.5
plot v(31)+6 v(23)+4 v(15)+2 v(11)

.endc
.end
