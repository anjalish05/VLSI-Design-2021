*AND gate
.include TSMC_180nm.txt
.option TEMP=27C

vdd 1 0 dc 1.8
va 2 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)
vb 3 0 pulse (0 1.8 0 0.1n 0.1n 20n 40n)

MP0 4 2 1 1 CMOSP W=3.6u L=0.18u
MP1 4 3 1 1 CMOSP W=3.6u L=0.18u
MN0 4 2 5 0 CMOSN W=1.8u L=0.18u
MN1 5 3 0 0 CMOSN W=1.8u L=0.18u

MP2 6 4 1 1 CMOSP W=3.6u L=0.18u
MN2 6 4 0 0 CMOSN W=1.8u L=0.18u

.tran 0.1n 100n
.control
run
set color0=white
set color1=black
set color2=blue
set color3=red
set color4=brown
set xbrushwidth=3.5
plot v(6) v(2) v(3)
.endc
.end
