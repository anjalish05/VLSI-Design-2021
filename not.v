 ***Inverter Netlist***

.include TSMC_180nm.txt
.param supply = 1.8V
.param LAMBDA = 0.09u
.param width_P = 10*LAMBDA
.param width_N = 10*LAMBDA
.global gnd VDD
****Netlist****

VDD net1 GND supply
**for NMOS drain gate source substrate **
MN1 output input GND GND NMOS W = 0.5u L = 130n
MP1 output input net1 net1 PMOS W = 1u L = 130n
**for capacitor 
C1 output GND 0.1p 
**for pulse input, we give the input code as :
**WHATEVER LOGIC 0, voltage at logic 1, delay of start of pulse, right time of pulse, PW: pulse width of phase

***PULSE(VL VH TR(t rise) TF PW PER PHASE)***
 
Vin input GND pulse(0 supply 0 0.5p 0.5p 0.1u 0.2u)

**AC Analysis**
*step size (1p), time (0.4u)*
.tran 1p 0.4u

.control 
plot v(output)

.endc
.end
