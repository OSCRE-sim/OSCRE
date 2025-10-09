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
N 350 -160 450 -160 {
lab=#net1}
N 350 -70 450 -70 {
lab=#net2}
N 640 210 640 230 {
lab=OSC2}
N 640 290 640 320 {
lab=VSS}
N 640 120 640 150 {
lab=VDD}
N 580 180 600 180 {
lab=OSC1}
N 580 180 580 260 {
lab=OSC1}
N 580 260 600 260 {
lab=OSC1}
N 640 180 710 180 {
lab=VDD}
N 640 260 710 260 {
lab=VSS}
N 830 210 830 230 {
lab=OSC3}
N 830 290 830 320 {
lab=VSS}
N 830 120 830 150 {
lab=VDD}
N 770 180 790 180 {
lab=OSC2}
N 770 180 770 260 {
lab=OSC2}
N 770 260 790 260 {
lab=OSC2}
N 830 180 900 180 {
lab=VDD}
N 830 260 900 260 {
lab=VSS}
N 640 220 770 220 {
lab=OSC2}
N 1020 210 1020 230 {
lab=OSC1}
N 1020 290 1020 320 {
lab=VSS}
N 1020 120 1020 150 {
lab=VDD}
N 960 180 980 180 {
lab=OSC3}
N 960 180 960 260 {
lab=OSC3}
N 960 260 980 260 {
lab=OSC3}
N 1020 180 1090 180 {
lab=VDD}
N 1020 260 1090 260 {
lab=VSS}
N 830 220 960 220 {
lab=OSC3}
N 1020 220 1150 220 {
lab=OSC1}
N 1150 220 1150 370 {
lab=OSC1}
N 530 370 1150 370 {
lab=OSC1}
N 530 220 530 370 {
lab=OSC1}
N 530 220 580 220 {
lab=OSC1}
C {vsource.sym} -70 -110 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} -70 -170 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {gnd.sym} -70 -50 0 0 {name=l3 lab=GND}
C {vsource.sym} -180 -110 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -180 -170 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {gnd.sym} -180 -50 0 0 {name=l1 lab=GND}
C {code_shown.sym} 35 90 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.ic V(net1)=5 V(net2)=0
.tran 1p 100n 0n
.save all
"}
C {code.sym} -200 60 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {lab_pin.sym} 200 -20 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {double_exp.sym} 390 -220 1 0 {name=x3 t_r=50n t_f=55n tau_r=100p tau_f=100p q_tot=4p}
C {OSCRE/latchup/basic_model.sym} 200 -100 0 0 {name=x1 
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
C {lab_pin.sym} 200 -210 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {code.sym} -200 230 0 0 {name=sT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/nfet_01v8.sym} 620 260 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 620 180 0 0 {name=M5
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 640 120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 640 320 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 180 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 710 260 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 810 260 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 810 180 0 0 {name=M3
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 830 120 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 830 320 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 900 180 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 900 260 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 1000 260 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 1000 180 0 0 {name=M6
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 1020 120 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1020 320 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1090 180 2 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1090 260 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 960 260 3 0 {name=p17 sig_type=std_logic lab=OSC3}
C {lab_pin.sym} 770 260 3 0 {name=p18 sig_type=std_logic lab=OSC2}
C {lab_pin.sym} 580 260 3 0 {name=p19 sig_type=std_logic lab=OSC1}
