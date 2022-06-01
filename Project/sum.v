*Sum Output*
.include carry.cir

**Input Initialization**
vc2 55 0 pulse (0 1.8 0 0.1n 0.1n 10n 20n)

**(Connections: drain gate source body CMOSN/CMOSP W L)**

**Inverter Gates For Pi*
*For P1*
*Output: P1' = 54, P1 = 7*
MP48 54 7 1 1 CMOSP W = 1.8u L = 0.18u
MN53 54 7 0 0 CMOSN W = 0.9u L = 0.18u
*For P2*
*Output: P2' = 61, P2 = 15*
MP49 61 15 1 1 CMOSP W = 1.8u L = 0.18u
MN54 61 15 0 0 CMOSN W = 0.9u L = 0.18u
*For P3*
*Output: P3' = 65, P3 = 23*
MP50 65 23 1 1 CMOSP W = 1.8u L = 0.18u
MN55 65 23 0 0 CMOSN W = 0.9u L = 0.18u
*For P4*
*Output: P4' = 66, P4 = 31*
MP51 66 31 1 1 CMOSP W = 1.8u L = 0.18u
MN56 66 31 0 0 CMOSN W = 0.9u L = 0.18u

**Sum Output using carry output pins Ci-1 and propagate output pins Pi**
**For S1**
*Output: S1 = 56; Inputs: P1 = 7, P1' = 54, Cin = 49, Cin' = 42*
MP52 56 52 1 1 CMOSP W = 1.8u L = 0.18u

MN57 56 7 57 0 CMOSN W = 0.9u L = 0.18u
MN58 56 54 58 0 CMOSN W = 0.9u L = 0.18u
MN59 57 42 59 0 CMOSN W = 0.9u L = 0.18u
MN60 58 49 59 0 CMOSN W = 0.9u L = 0.18u
MN61 59 53 0 0 CMOSN W = 0.9u L = 0.18u

*For Second Clock, connecting the Sum Output line and GND*
MN62 56 55 0 0 CMOSN W = 0.9u L = 0.18u

**For S2**
*Output: S2 = 60; Inputs: P2 = 15, P2' = 61, C1 = 50, C1' = 43*
MP53 60 52 1 1 CMOSP W = 1.8u L = 0.18u

MN63 60 15 62 0 CMOSN W = 0.9u L = 0.18u
MN64 60 61 63 0 CMOSN W = 0.9u L = 0.18u
MN65 62 43 64 0 CMOSN W = 0.9u L = 0.18u
MN66 63 50 64 0 CMOSN W = 0.9u L = 0.18u
MN67 64 53 0 0 CMOSN W = 0.9u L = 0.18u

*For Second Clock, connecting the Sum Output line and GND*
MN68 60 55 0 0 CMOSN W = 0.9u L = 0.18u

**For S3**
*Output: S3 = 67; Inputs: P3 = 23, P3' = 65, C2 = 51, C2' = 44*
MP54 67 52 1 1 CMOSP W = 1.8u L = 0.18u

MN69 67 65 69 0 CMOSN W = 0.9u L = 0.18u
MN70 67 23 68 0 CMOSN W = 0.9u L = 0.18u
MN71 68 44 70 0 CMOSN W = 0.9u L = 0.18u
MN72 69 51 70 0 CMOSN W = 0.9u L = 0.18u
MN73 70 53 0 0 CMOSN W = 0.9u L = 0.18u

*For Second Clock, connecting the Sum Output line and GND*
MN74 67 55 0 0 CMOSN W = 0.9u L = 0.18u

**For S4**
*Output: S4 = 71; Inputs: P4 = 31, P4' = 66, C3 = 52, C3' = 45*
MP55 71 52 1 1 CMOSP W = 1.8u L = 0.18u

MN75 71 31 72 0 CMOSN W = 0.9u L = 0.18u
MN76 71 66 73 0 CMOSN W = 0.9u L = 0.18u
MN77 72 45 74 0 CMOSN W = 0.9u L = 0.18u
MN78 73 52 74 0 CMOSN W = 0.9u L = 0.18u
MN79 74 53 0 0 CMOSN W = 0.9u L = 0.18u

*For Second Clock, connecting the Sum Output line and GND*
MN80 71 55 0 0 CMOSN W = 0.9u L = 0.18u

**No. of PMOS = 55, NMOS = 80**

.tran 0.1n 100n
.control
run
set color0=white
set color1=black
set color2=blue
set color3=red
set color4=brown
set xbrushwidth=3.5
set curplottitle= Anjali-Singh-2020102004-Sum-Output
plot v(50)+6 v(67)+4 v(2)+2 v(3)
.endc
.end
