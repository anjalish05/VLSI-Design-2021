*Generate Signal*
.include TSMC_180nm.txt
.include propagate.cir
.option TEMP=27C

**(Connections: drain gate source body CMOSN/CMOSP W L)**

***Generate Signal for Various Inputs***

**For Inputs A1 and B1**
*Output: G1; Inputs: A1 = 2, B1 = 3*
MP25 34 2 1 1 CMOSP W = 1.8u L = 0.18u
MP26 34 3 1 1 CMOSP W = 1.8u L = 0.18u
MN25 34 2 35 0 CMOSN W = 0.9u L = 0.18u
MN26 35 3 0 0 CMOSN W = 0.9u L = 0.18u
*Inverter Part*
MP27 G1 34 1 1 CMOSP W = 1.8u L = 0.18u
MN27 G1 34 0 0 CMOSN W = 0.9u L = 0.18u
C5 G1 0 100f

**For Inputs A2 and B2**
*Output: G2; Inputs: A2 = 10, B2 = 11*
MP28 36 10 1 1 CMOSP W = 1.8u L = 0.18u
MP29 36 11 1 1 CMOSP W = 1.8u L = 0.18u
MN28 36 10 37 0 CMOSN W = 0.9u L = 0.18u
MN29 37 11 0 0 CMOSN W = 0.9u L = 0.18u
*Inverter Part*
MP30 G2 36 1 1 CMOSP W = 1.8u L = 0.18u
MN30 G2 36 0 0 CMOSN W = 0.9u L = 0.18u
C6 G2 0 100f

**For Inputs A3 and B3**
*Output: G3; Inputs: A3 = 18, B3 = 19*
MP31 38 18 1 1 CMOSP W = 1.8u L = 0.18u
MP32 38 19 1 1 CMOSP W = 1.8u L = 0.18u
MN31 38 18 39 0 CMOSN W = 0.9u L = 0.18u
MN32 39 19 0 0 CMOSN W = 0.9u L = 0.18u
*Inverter Part*
MP33 G3 38 1 1 CMOSP W = 1.8u L = 0.18u
MN33 G3 38 0 0 CMOSN W = 0.9u L = 0.18u
C7 G3 0 100f

**For Inputs A4 and B4**
*Output: G4; Inputs: A4 = 18, B4 = 19*
MP34 40 26 1 1 CMOSP W = 1.8u L = 0.18u
MP35 40 27 1 1 CMOSP W = 1.8u L = 0.18u
MN34 40 26 41 0 CMOSN W = 0.9u L = 0.18u
MN35 41 27 0 0 CMOSN W = 0.9u L = 0.18u
*Inverter Part*
MP36 G4 40 1 1 CMOSP W = 1.8u L = 0.18u
MN36 G4 40 0 0 CMOSN W = 0.9u L = 0.18u
C8 G4 0 100f

**36 PMOS, 36 NMOS Used till now**


.tran 0.1n 100n
.control
run
set color0=white
set color1=black
set color2=blue
set color3=red
set color4=brown
set xbrushwidth=3.5
plot v(G4)+6 v(G3)+4 v(18)+2 v(19)
.endc
.end
