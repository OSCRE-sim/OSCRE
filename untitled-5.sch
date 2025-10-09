v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -190 130 -170 {
lab=OSC2}
N 130 -110 130 -80 {
lab=VSS}
N 130 -280 130 -250 {
lab=VDD}
N 70 -220 90 -220 {
lab=OSC1}
N 70 -220 70 -140 {
lab=OSC1}
N 70 -140 90 -140 {
lab=OSC1}
N 130 -220 200 -220 {
lab=NWELL}
N 130 -140 200 -140 {
lab=SUB}
N 320 -190 320 -170 {
lab=OSC3}
N 320 -110 320 -80 {
lab=VSS}
N 320 -280 320 -250 {
lab=VDD}
N 260 -220 280 -220 {
lab=OSC2}
N 260 -220 260 -140 {
lab=OSC2}
N 260 -140 280 -140 {
lab=OSC2}
N 320 -220 390 -220 {
lab=NWELL}
N 320 -140 390 -140 {
lab=SUB}
N 130 -180 260 -180 {
lab=OSC2}
N 510 -190 510 -170 {
lab=OSC1}
N 510 -110 510 -80 {
lab=VSS}
N 510 -280 510 -250 {
lab=VDD}
N 450 -220 470 -220 {
lab=OSC3}
N 450 -220 450 -140 {
lab=OSC3}
N 450 -140 470 -140 {
lab=OSC3}
N 510 -220 580 -220 {
lab=NWELL}
N 510 -140 580 -140 {
lab=SUB}
N 320 -180 450 -180 {
lab=OSC3}
N 510 -180 640 -180 {
lab=OSC1}
N 640 -180 640 -30 {
lab=OSC1}
N 20 -30 640 -30 {
lab=OSC1}
N 20 -180 20 -30 {
lab=OSC1}
N 20 -180 70 -180 {
lab=OSC1}
N -110 -180 -110 -150 {
lab=VDD}
N -110 -90 -110 -60 {
lab=GND}
N -220 -180 -220 -150 {
lab=VSS}
N -220 -90 -220 -60 {
lab=GND}
N 600 10 600 30 {
lab=VDD}
N 600 180 600 200 {
lab=VSS}
N 750 60 850 60 {
lab=NWELL}
N 750 150 850 150 {
lab=SUB}
N 850 -220 850 60 {
lab=NWELL}
N 580 -220 850 -220 {
lab=NWELL}
N 580 -140 880 -140 {
lab=SUB}
N 880 -140 880 150 {
lab=SUB}
N 850 150 880 150 {
lab=SUB}
C {code_shown.sym} 15 250 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.ic V(OSC1)=0 V(OSC2)=1.8 V(OSC3)=0 V(NWELL)=1.8 V(SUB)=0
.tran 1p 10n 0n
.save all
"}
C {sky130_fd_pr/nfet_01v8.sym} 110 -140 0 0 {name=M2
W=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 110 -220 0 0 {name=M5
W=0.5
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
C {lab_pin.sym} 130 -280 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 130 -80 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 200 -220 2 0 {name=p6 sig_type=std_logic lab=NWELL}
C {lab_pin.sym} 200 -140 2 0 {name=p8 sig_type=std_logic lab=SUB}
C {sky130_fd_pr/nfet_01v8.sym} 300 -140 0 0 {name=M1
W=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 300 -220 0 0 {name=M3
W=0.5
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
C {lab_pin.sym} 320 -280 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 320 -80 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -220 2 0 {name=p11 sig_type=std_logic lab=NWELL}
C {lab_pin.sym} 390 -140 2 0 {name=p12 sig_type=std_logic lab=SUB}
C {sky130_fd_pr/nfet_01v8.sym} 490 -140 0 0 {name=M4
W=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 490 -220 0 0 {name=M6
W=0.5
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
C {lab_pin.sym} 510 -280 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 510 -80 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 450 -140 3 0 {name=p17 sig_type=std_logic lab=OSC3}
C {lab_pin.sym} 260 -140 3 0 {name=p18 sig_type=std_logic lab=OSC2}
C {lab_pin.sym} 70 -140 3 0 {name=p19 sig_type=std_logic lab=OSC1}
C {vsource.sym} -110 -120 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -110 -180 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {gnd.sym} -110 -60 0 0 {name=l3 lab=GND}
C {vsource.sym} -220 -120 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -220 -180 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {gnd.sym} -220 -60 0 0 {name=l1 lab=GND}
C {code.sym} -140 60 0 0 {name=sT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {lab_pin.sym} 600 200 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {double_exp.sym} 790 0 1 0 {name=x3 t_r=1n t_f=6n tau_r=100p tau_f=100p q_tot=40p}
C {OSCRE/latchup/basic_model.sym} 600 120 0 0 {name=x1 
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
C {lab_pin.sym} 600 10 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {code.sym} -130 210 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {lab_pin.sym} 850 -220 2 0 {name=p15 sig_type=std_logic lab=NWELL}
C {lab_pin.sym} 880 -140 2 0 {name=p16 sig_type=std_logic lab=SUB}
