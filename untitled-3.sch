v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -220 -90 -190 {
lab=VDD}
N -90 -130 -90 -100 {
lab=GND}
N -200 -220 -200 -190 {
lab=VSS}
N -200 -130 -200 -100 {
lab=GND}
N 180 -260 180 -240 {
lab=VDD}
N 180 -90 180 -70 {
lab=VSS}
N 330 -210 430 -210 {
lab=#net1}
N 330 -120 430 -120 {
lab=#net2}
C {vsource.sym} -90 -160 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} -90 -220 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {gnd.sym} -90 -100 0 0 {name=l3 lab=GND}
C {vsource.sym} -200 -160 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -200 -220 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {gnd.sym} -200 -100 0 0 {name=l1 lab=GND}
C {code_shown.sym} 15 40 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.ic V(net1)=5 V(net2)=0
.tran 1p 100n 0n
.save all
"}
C {code.sym} -210 40 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {lab_pin.sym} 180 -70 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {double_exp.sym} 370 -270 1 0 {name=x3 t_r=50n t_f=55n tau_r=100p tau_f=100p q_tot=4p}
C {OSCRE/latchup/basic_model.sym} 180 -150 0 0 {name=x1 
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
C {lab_pin.sym} 180 -260 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 670 -120 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet3_01v8.sym} 670 -200 0 0 {name=M2
W=1
L=0.15
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
