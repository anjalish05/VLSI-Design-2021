.include TSMC_180nm.txt
.option TEMP=27C

**VDD Connections**
vdd 1 0 dc 1.8

**Input Initialization**
vcin 49 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)
vclk CLK 0 pulse (0 1.8 0 0.1n 0.1n 20n 40n)
vp1 7 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)
vp2 15 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)
vp3 23 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)
vp4 31 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)
vg1 G1 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)
vg2 G2 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)
vg3 G3 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)
vg4 G4 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)
vclk' CLK' 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)


**(Connections: drain gate source body CMOSN/CMOSP W L)**

**Inverter Gate**
*For CLOCK (CLK)*
*Output: CLK'; Input: CLK*
MP37 CLK' CLK 1 1 CMOSP W = 1.8u L = 0.18u
MN37 CLK' CLK 0 0 CMOSN W = 0.9u L = 0.18u
*For Cin*
*Output: Cin = 49; Input: Cin' = 42*
MP38 42 49 1 1 CMOSP W = 1.8u L = 0.18u
MN38 42 49 0 0 CMOSN W = 0.9u L = 0.18u

**Main Circuit**
*Outputs: C1' = 43, C2' = 44, C3' = 45, C4 = 48*
*Inputs: CLK, Cin = , CLK', G1, G2, G3, G4, P1 = 7, P2 = 15, P3 = 23, P4 = 31*
MP39 42 CLK 1 1 CMOSP W = 1.8u L = 0.18u
MP40 43 CLK 1 1 CMOSP W = 1.8u L = 0.18u
MP41 44 CLK 1 1 CMOSP W = 1.8u L = 0.18u
MP42 45 CLK 1 1 CMOSP W = 1.8u L = 0.18u
MP43 46 CLK 1 1 CMOSP W = 1.8u L = 0.18u

*Using Inputs of Propagate Signal*
MN39 43 7 42 0 CMOSN W = 0.9u L = 0.18u
MN40 44 15 43 0 CMOSN W = 0.9u L = 0.18u
MN41 45 23 44 0 CMOSN W = 0.9u L = 0.18u
MN42 46 31 45 0 CMOSN W = 0.9u L = 0.18u

*Using Inputs of Generate Signal*
MN43 42 49 47 0 CMOSN W = 0.9u L = 0.18u
MN44 43 G1 47 0 CMOSN W = 0.9u L = 0.18u
MN45 44 G2 47 0 CMOSN W = 0.9u L = 0.18u
MN46 45 G3 47 0 CMOSN W = 0.9u L = 0.18u
MN47 46 G4 47 0 CMOSN W = 0.9u L = 0.18u

*Inverting the clock signal*
MN48 47 CLK' 0 0 CMOSN W = 0.9u L = 0.18u

*Inverting the Outputs C1', C2', C3', C4'*

*For C4, Output: C4 = 48; Input: C4' = 46*
MP44 48 46 1 1 CMOSP W = 1.8u L = 0.18u
MN49 48 46 0 0 CMOSN W = 0.9u L = 0.18u
*For C1, Output: C1 = 50; Input: C1' = 43*
MP45 50 43 1 1 CMOSP W = 1.8u L = 0.18u
MN50 50 43 0 0 CMOSN W = 0.9u L = 0.18u
*For C2, Output: C2 = 51; Input: C2' = 44*
MP46 51 44 1 1 CMOSP W = 1.8u L = 0.18u
MN51 51 44 0 0 CMOSN W = 0.9u L = 0.18u
*For C3, Output: C3 = 52; Input: C2' = 45*
MP47 52 45 1 1 CMOSP W = 1.8u L = 0.18u
MN52 52 45 0 0 CMOSN W = 0.9u L = 0.18u

**No. of PMOS = 47, NMOS = 52**

.tran 0.1n 100n
.control
run
set color0=white
set color1=black
set color2=blue
set color3=red
set color4=brown
set xbrushwidth=3.5
plot v(50)+6 v(51)+4 v(52)+2 v(48)
.endc
.end
