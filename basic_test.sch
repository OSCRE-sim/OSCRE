v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 -170 -70 -140 {
lab=VDD}
N -70 -80 -70 -50 {
lab=GND}
N -180 -170 -180 -140 {
lab=VSS}
N -180 -80 -180 -50 {
lab=GND}
N 200 -220 200 -200 {
lab=VDD}
N 200 -30 200 -10 {
lab=VSS}
N 350 -160 450 -160 {
lab=#net1}
N 350 -70 450 -70 {
lab=#net2}
N 90 -220 90 -200 {
lab=VDD}
N 90 -30 90 -10 {
lab=VSS}
C {vsource.sym} -70 -110 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} -70 -170 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {gnd.sym} -70 -50 0 0 {name=l3 lab=GND}
C {vsource.sym} -180 -110 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -180 -170 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {gnd.sym} -180 -50 0 0 {name=l1 lab=GND}
C {code_shown.sym} 35 90 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.ic V(net1)=5 V(net2)=0
.tran 1p 15n 0n
.save all
"}
C {code.sym} -200 60 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {lab_pin.sym} 200 -10 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {double_exp.sym} 390 -220 1 0 {name=x3 t_r=5n t_f=10n tau_r=100p tau_f=100p q_tot=4p}
C {OSCRE/latchup/basic_model.sym} 200 -120 0 0 {name=x1 
+ IS_N=1e-18
+ BF_N=100
+ VAF_N=50
+ IKF_N=0.01
+ CJE_N=0.2p
+ CJC_N=0.1p
+ TF_N=0.2n
+ TR_N=2n
+ IS_P=1e-18
+ BF_P=100
+ VAF_P=50
+ IKF_P=0.01
+ CJE_P=0.3p
+ CJC_P=0.15p
+ TF_P=0.3n
+ TR_P=3n}
C {lab_pin.sym} 200 -220 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 90 -220 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 90 -10 0 0 {name=p5 sig_type=std_logic lab=VSS}
