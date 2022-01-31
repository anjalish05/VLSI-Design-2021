***Ring Oscillator Netlist***
.include TSMC_180nm.txt

vdd 1 0 dc 1.8

**Connections: drain gate source body CMOSN/CMOSP w L**
*Connections of 5 inverters*

MP1 3 2 1 1 CMOSP W = 3.6u L = 0.18u
MN1 3 2 0 0 CMOSN W = 1.8u L = 0.18u 
C1 3 0 100f

MP2 4 3 1 1 CMOSP W = 3.6u L = 0.18u
MN2 4 3 0 0 CMOSN W = 1.8u L = 0.18u 
C2 4 0 100f

MP3 5 4 1 1 CMOSP W = 3.6u L = 0.18u
MN3 5 4 0 0 CMOSN W = 1.8u L = 0.18u
C3 5 0 100f

MP4 6 5 1 1 CMOSP W = 3.6u L = 0.18u
MN4 6 5 0 0 CMOSN W = 1.8u L = 0.18u 
C4 6 0 100f

MP5 2 6 1 1 CMOSP W = 3.6u L = 0.18u
MN5 2 6 0 0 CMOSN W = 1.8u L = 0.18u 
C5 2 0 100f

.tran 0.01n 10n

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
plot v(2)+4 v(5)+2 v(2)

.endc
.end



