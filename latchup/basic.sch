v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -330 340 -330 {
lab=RAD_SOURCE}
N 200 -330 200 -280 {
lab=RAD_SOURCE}
N 380 -300 380 -280 {
lab=RAD_SINK}
N 380 -220 380 -170 {
lab=RAD_SINK}
N 240 -170 380 -170 {
lab=RAD_SINK}
N 200 -220 200 -200 {
lab=RAD_SOURCE}
N 380 -280 380 -220 {
lab=RAD_SINK}
N 200 -280 200 -220 {
lab=RAD_SOURCE}
N 200 -340 200 -330 {
lab=RAD_SOURCE}
N 380 -170 380 -160 {
lab=RAD_SINK}
N 200 -140 200 -100 {
lab=VSS}
N 380 -440 380 -360 {
lab=VDD}
N 200 -440 200 -400 {
lab=VDD}
N 290 -330 290 -290 {
lab=RAD_SOURCE}
N 290 -200 290 -170 {
lab=RAD_SINK}
N 200 -440 380 -440 {
lab=VDD}
N 150 -440 200 -440 {
lab=VDD}
N 380 -100 380 -80 {
lab=VSS}
N 200 -80 380 -80 {
lab=VSS}
N 200 -100 200 -80 {
lab=VSS}
N 150 -80 200 -80 {
lab=VSS}
N -180 -230 -180 -200 {
lab=VDD}
N -180 -140 -180 -110 {
lab=GND}
N -290 -230 -290 -200 {
lab=VSS}
N -290 -140 -290 -110 {
lab=GND}
C {pnp.sym} 360 -330 0 0 {name=Q1
model=pnp_cust
area=1
m=1}
C {npn.sym} 220 -170 0 1 {name=Q2
model=npn_cust
area=1
m=1}
C {res.sym} 380 -130 0 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 200 -370 0 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {iopin.sym} 150 -440 2 0 {name=p1 lab=VDD}
C {iopin.sym} 150 -80 2 0 {name=p2 lab=VSS}
C {iopin.sym} 290 -290 2 0 {name=p5 lab=RAD_SOURCE}
C {iopin.sym} 290 -200 0 0 {name=p6 lab=RAD_SINK}
C {code_shown.sym} 35 90 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.param IS_N=1e-16
.param BF_N=100
.param VAF_N=100
.param IKF_N=0.1
.param CJE_N=2p
.param CJC_N=2p
.param TF_N=0.1n
.param TR_N=10n
.param IS_P=1e-16
.model npn_cust npn (IS=\{IS_N\} BF=\{BF_N\} VAF=\{VAF_N\} IKF=\{IKF_N\} CJE=\{CJE_N\} CJC=\{CJC_N\} TF=\{TF_N\} TR=\{TR_N\})
.model pnp_cust pnp (IS=1e-16 BF=100 VAF=100 IKF=0.1 CJE=2p CJC=2p TF=0.1n TR=10n)
.tran 1p 20n 8n
.save all
"}
C {code.sym} -200 60 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {vsource.sym} -180 -170 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} -180 -230 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {gnd.sym} -180 -110 0 0 {name=l3 lab=GND}
C {double_exp.sym} 290 -350 1 0 {name=x1 t_r=9n t_f=9.5n tau_r=10p tau_f=10p q_tot=1p}
C {vsource.sym} -290 -170 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -290 -230 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {gnd.sym} -290 -110 0 0 {name=l1 lab=GND}
