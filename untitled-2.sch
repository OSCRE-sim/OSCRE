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
N 200 -210 200 -190 {
lab=VDD}
N 200 -40 200 -20 {
lab=VSS}
C {vsource.sym} -70 -110 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} -70 -170 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {gnd.sym} -70 -50 0 0 {name=l3 lab=GND}
C {vsource.sym} -180 -110 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -180 -170 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {gnd.sym} -180 -50 0 0 {name=l1 lab=GND}
C {code_shown.sym} 35 90 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.tran 1p 20n 8n
.save all
"}
C {code.sym} -200 60 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {lab_pin.sym} 200 -210 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 200 -20 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {double_exp.sym} 350 -220 1 0 {name=x3 t_r=9n t_f=9.5n tau_r=10p tau_f=10p q_tot=1p}
C {OSCRE/latchup/basic_model.sym} 200 -100 0 0 {name=x1 
+ IS_N=1e-16 
+ BF_N=100 
+ VAF_N=100 
+ IKF_N=0.1 
+ CJE_N=2p 
+ CJC_N=2p 
+ TF_N=0.1n 
+ TR_N=10n 
+ IS_P=1e-16 
+ BF_P=100 
+ VAF_P=100 
+ IKF_P=0.1 
+ CJE_P=2p 
+ CJC_P=2p 
+ TF_P=0.1n 
+ TR_P=10n}
