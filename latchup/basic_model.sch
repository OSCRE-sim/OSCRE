v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -320 380 -320 {
lab=RAD_SOURCE}
N 240 -320 240 -270 {
lab=RAD_SOURCE}
N 420 -290 420 -270 {
lab=RAD_SINK}
N 420 -210 420 -160 {
lab=RAD_SINK}
N 280 -160 420 -160 {
lab=RAD_SINK}
N 240 -210 240 -190 {
lab=RAD_SOURCE}
N 420 -270 420 -210 {
lab=RAD_SINK}
N 240 -270 240 -210 {
lab=RAD_SOURCE}
N 240 -330 240 -320 {
lab=RAD_SOURCE}
N 420 -160 420 -150 {
lab=RAD_SINK}
N 240 -130 240 -90 {
lab=NMOS_SOURCE}
N 420 -430 420 -350 {
lab=PMOS_SOURCE}
N 240 -430 240 -390 {
lab=NWELL}
N 330 -320 330 -280 {
lab=RAD_SOURCE}
N 330 -190 330 -160 {
lab=RAD_SINK}
N 420 -90 420 -70 {
lab=SUBSTRATE}
N 240 -90 240 -70 {
lab=NMOS_SOURCE}
C {pnp.sym} 400 -320 0 0 {name=Q1
model=pnp_cust
area=1
m=1}
C {npn.sym} 260 -160 0 1 {name=Q2
model=npn_cust
area=1
m=1}
C {res.sym} 420 -120 0 0 {name=R3
value=1000
footprint=1206
device=resistor
m=1}
C {res.sym} 240 -360 0 0 {name=R4
value=1000
footprint=1206
device=resistor
m=1}
C {iopin.sym} 240 -430 2 0 {name=p1 lab=NWELL}
C {iopin.sym} 420 -70 0 0 {name=p2 lab=SUBSTRATE}
C {iopin.sym} 330 -280 2 0 {name=p5 lab=RAD_SOURCE}
C {iopin.sym} 330 -190 0 0 {name=p6 lab=RAD_SINK}
C {code_shown.sym} 65 70 0 0 {name=s1 only_toplevel=false value="
.model npn_cust npn (IS=\{IS_N\} BF=\{BF_N\} VAF=\{VAF_N\} IKF=\{IKF_N\} CJE=\{CJE_N\} CJC=\{CJC_N\} TF=\{TF_N\} TR=\{TR_N\})
.model pnp_cust pnp (IS=\{IS_P\} BF=\{BF_P\} VAF=\{VAF_P\} IKF=\{IKF_P\} CJE=\{CJE_P\} CJC=\{CJC_N\} TF=\{TF_N\} TR=\{TR_P\})
"}
C {iopin.sym} 240 -70 2 0 {name=p3 lab=NMOS_SOURCE}
C {iopin.sym} 420 -430 0 0 {name=p4 lab=PMOS_SOURCE}
