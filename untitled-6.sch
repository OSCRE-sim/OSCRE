v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -220 190 -190 {
lab=VDD}
N 80 -170 80 -140 {
lab=VSS}
N 80 -80 80 -50 {
lab=GND}
N 190 -80 190 -30 {
lab=VSS}
N 1120 450 1120 500 {
lab=VSS}
N 190 -190 190 -140 {
lab=VDD}
N 780 450 780 500 {
lab=VSS}
N 820 420 920 420 {
lab=VB}
N 780 360 780 390 {
lab=VB}
N 780 380 870 380 {
lab=VB}
N 870 380 870 420 {
lab=VB}
N 780 260 780 300 {
lab=VDD}
N 760 420 780 420 {
lab=VSS}
N 760 420 760 460 {
lab=VSS}
N 760 460 780 460 {
lab=VSS}
N 1120 420 1140 420 {
lab=VBN}
N 920 420 1080 420 {
lab=VB}
N 1120 360 1120 390 {
lab=VS}
N 1120 360 1220 360 {
lab=VS}
N 1020 360 1120 360 {
lab=VS}
N 1020 330 1220 330 {
lab=VBN}
N 1020 240 1020 300 {
lab=#net1}
N 1220 240 1220 300 {
lab=VOUT}
N 1020 270 1120 270 {
lab=#net1}
N 1010 210 1020 210 {
lab=VBP}
N 1220 210 1230 210 {
lab=VBP}
N 1060 210 1180 210 {
lab=#net1}
N 1120 210 1120 270 {
lab=#net1}
N 1020 160 1020 180 {
lab=VDD}
N 1220 160 1220 180 {
lab=VDD}
N 1220 270 1280 270 {
lab=VOUT}
N 1260 330 1300 330 {
lab=VINP}
N 940 330 980 330 {
lab=VINN}
N 330 -80 330 -30 {
lab=VSS}
N 330 -190 330 -140 {
lab=VINP}
N 520 -80 520 -30 {
lab=VSS}
N 520 -190 520 -140 {
lab=VINN}
N 900 480 900 500 {
lab=VSS}
N 1620 330 1620 350 {
lab=VDD}
N 1620 520 1620 540 {
lab=VS}
N 1770 390 1870 390 {
lab=VBP}
N 1770 480 1870 480 {
lab=VBN}
N 1510 330 1510 350 {
lab=VDD}
N 1510 520 1510 540 {
lab=VSS}
C {code_shown.sym} 25 250 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.ic V(VBP)=1.8 V(VBN)=0
.tran 1n 1u 0n
.save all
"}
C {code.sym} -130 70 0 0 {name=sT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {code.sym} -120 220 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {sky130_fd_pr/nfet_01v8.sym} 1100 420 0 0 {name=M2
W=80
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
C {vsource.sym} 190 -110 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} 190 -220 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {vsource.sym} 80 -110 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} 80 -170 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {gnd.sym} 80 -50 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 190 -30 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1120 500 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 800 420 0 1 {name=M1
W=80
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
C {lab_pin.sym} 780 500 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {isource.sym} 780 330 0 0 {name=I0 value=100u}
C {lab_pin.sym} 780 260 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1000 330 0 0 {name=M3
W=7
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
C {sky130_fd_pr/nfet_01v8.sym} 1240 330 0 1 {name=M4
W=7
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
C {lab_pin.sym} 1120 330 1 0 {name=p1 sig_type=std_logic lab=VBN}
C {sky130_fd_pr/pfet_01v8.sym} 1040 210 0 1 {name=M5
W=19
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
C {sky130_fd_pr/pfet_01v8.sym} 1200 210 0 0 {name=M6
W=19
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
C {lab_pin.sym} 1010 210 2 1 {name=p6 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1230 210 0 1 {name=p8 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1220 160 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1020 160 2 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1280 270 0 1 {name=p11 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 1300 330 0 1 {name=p12 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 940 330 2 1 {name=p13 sig_type=std_logic lab=VINN}
C {vsource.sym} 330 -110 0 0 {name=V4 value="SIN(0.8 0.01 1e6)" savecurrent=false}
C {lab_pin.sym} 330 -30 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 330 -190 0 0 {name=p14 sig_type=std_logic lab=VINP}
C {vsource.sym} 520 -110 0 0 {name=V3 value="SIN(0.8 0.01 1e6 0 0 180)" savecurrent=false}
C {lab_pin.sym} 520 -30 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 520 -190 0 0 {name=p17 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 1120 370 0 1 {name=p18 sig_type=std_logic lab=VS}
C {lab_pin.sym} 950 420 3 1 {name=p19 sig_type=std_logic lab=VB}
C {capa.sym} 900 450 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 900 500 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1620 540 0 0 {name=p21 sig_type=std_logic lab=VS}
C {double_exp.sym} 1810 330 1 0 {name=x3 t_r=500n t_f=505n tau_r=100p tau_f=100p q_tot=5p}
C {OSCRE/latchup/basic_model.sym} 1620 430 0 0 {name=x1 
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
C {lab_pin.sym} 1620 330 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1140 420 2 0 {name=p23 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1510 330 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1510 540 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1870 480 2 0 {name=p26 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1870 390 0 1 {name=p27 sig_type=std_logic lab=VBP}
