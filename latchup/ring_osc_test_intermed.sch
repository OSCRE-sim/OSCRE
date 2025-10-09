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
N 890 -190 890 -170 {
lab=OSC1}
N 890 -110 890 -80 {
lab=VSS}
N 890 -280 890 -250 {
lab=VDD}
N 830 -220 850 -220 {
lab=OSC5}
N 830 -220 830 -140 {
lab=OSC5}
N 830 -140 850 -140 {
lab=OSC5}
N 890 -220 960 -220 {
lab=NWELL}
N 890 -140 960 -140 {
lab=SUB}
N 320 -180 450 -180 {
lab=OSC3}
N 890 -180 1020 -180 {
lab=OSC1}
N 1020 -180 1020 -30 {
lab=OSC1}
N 20 -30 640 -30 {
lab=OSC1}
N 20 -180 20 -30 {
lab=OSC1}
N 20 -180 70 -180 {
lab=OSC1}
N -110 -230 -110 -200 {
lab=VDD}
N -220 -180 -220 -150 {
lab=VSS}
N -220 -90 -220 -60 {
lab=GND}
N 1230 -220 1230 60 {
lab=NWELL}
N 960 -220 1230 -220 {
lab=NWELL}
N 960 -140 1260 -140 {
lab=SUB}
N 1260 -140 1260 150 {
lab=SUB}
N 510 -190 510 -170 {
lab=OSC4}
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
N 510 -180 640 -180 {
lab=OSC4}
N 700 -190 700 -170 {
lab=OSC5}
N 700 -110 700 -80 {
lab=VSS}
N 700 -280 700 -250 {
lab=VDD}
N 640 -220 660 -220 {
lab=OSC4}
N 640 -220 640 -140 {
lab=OSC4}
N 640 -140 660 -140 {
lab=OSC4}
N 700 -220 770 -220 {
lab=NWELL}
N 700 -140 770 -140 {
lab=SUB}
N 700 -180 830 -180 {
lab=OSC5}
N 640 -30 1020 -30 {
lab=OSC1}
N -110 -90 -110 -40 {
lab=VSS}
N 960 480 1100 480 {
lab=NWELL}
N 1140 510 1140 530 {
lab=PNP_C}
N 1000 640 1140 640 {
lab=SUB}
N 960 590 960 610 {
lab=NPN_C}
N 1140 360 1140 370 {
lab=VDD}
N 960 360 960 370 {
lab=VDD}
N 960 440 960 480 {
lab=NWELL}
N 1140 430 1140 440 {
lab=PNP_E}
N 1140 530 1140 570 {
lab=PNP_C}
N 1140 630 1140 640 {
lab=SUB}
N 1140 640 1140 680 {
lab=SUB}
N 960 550 960 590 {
lab=NPN_C}
N 960 480 960 490 {
lab=NWELL}
N 960 680 960 690 {
lab=NPN_E}
N 1050 480 1050 520 {
lab=NWELL}
N 1050 610 1050 640 {
lab=SUB}
N 1140 440 1140 450 {
lab=PNP_E}
N 960 430 960 440 {
lab=NWELL}
N 960 670 960 680 {
lab=NPN_E}
N 1140 680 1140 690 {
lab=SUB}
C {code_shown.sym} 15 250 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.ic V(OSC1)=0 V(OSC2)=1.8 V(OSC3)=0 V(NWELL)=1.8 V(SUB)=0
.tran 1p 15n 0n
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
C {sky130_fd_pr/nfet_01v8.sym} 870 -140 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 870 -220 0 0 {name=M6
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
C {lab_pin.sym} 890 -280 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 890 -80 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 830 -140 3 0 {name=p17 sig_type=std_logic lab=OSC5}
C {lab_pin.sym} 260 -140 3 0 {name=p18 sig_type=std_logic lab=OSC2}
C {lab_pin.sym} 70 -140 3 0 {name=p19 sig_type=std_logic lab=OSC1}
C {vsource.sym} -110 -120 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -110 -230 0 0 {name=p7 sig_type=std_logic lab=VDD}
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
C {code.sym} -130 210 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {lab_pin.sym} 1230 -220 2 0 {name=p15 sig_type=std_logic lab=NWELL}
C {lab_pin.sym} 1260 -140 2 0 {name=p16 sig_type=std_logic lab=SUB}
C {res.sym} -110 -180 0 0 {name=R1
value=100m
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} 490 -140 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 490 -220 0 0 {name=M8
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
C {lab_pin.sym} 510 -280 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 510 -80 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 580 -220 2 0 {name=p22 sig_type=std_logic lab=NWELL}
C {lab_pin.sym} 580 -140 2 0 {name=p23 sig_type=std_logic lab=SUB}
C {lab_pin.sym} 450 -140 3 0 {name=p24 sig_type=std_logic lab=OSC3}
C {sky130_fd_pr/nfet_01v8.sym} 680 -140 0 0 {name=M9
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
C {sky130_fd_pr/pfet_01v8.sym} 680 -220 0 0 {name=M10
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
C {lab_pin.sym} 700 -280 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 700 -80 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 770 -220 2 0 {name=p27 sig_type=std_logic lab=NWELL}
C {lab_pin.sym} 770 -140 2 0 {name=p28 sig_type=std_logic lab=SUB}
C {lab_pin.sym} 640 -140 3 0 {name=p29 sig_type=std_logic lab=OSC4}
C {lab_pin.sym} -110 -40 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {pnp.sym} 1120 480 0 0 {name=Q1
model=pnp_cust
area=1
m=1}
C {npn.sym} 980 640 0 1 {name=Q2
model=npn_cust
area=1
m=1}
C {res.sym} 1140 720 0 0 {name=R3
value=1000
footprint=1206
device=resistor
m=1}
C {res.sym} 1140 400 0 0 {name=R4
value=5
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1140 750 0 0 {name=l2 lab=GND}
C {gnd.sym} 960 750 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 960 360 0 0 {name=p46 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1140 360 0 0 {name=p47 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 960 590 0 0 {name=p48 sig_type=std_logic lab=NPN_C
}
C {lab_pin.sym} 1140 530 2 0 {name=p49 sig_type=std_logic lab=PNP_C
}
C {res.sym} 960 400 0 0 {name=R2
value=1000
footprint=1206
device=resistor
m=1}
C {res.sym} 960 720 0 0 {name=R5
value=5
footprint=1206
device=resistor
m=1}
C {res.sym} 960 520 0 0 {name=R6
value=2
footprint=1206
device=resistor
m=1}
C {res.sym} 1140 600 0 0 {name=R7
value=2
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1140 440 2 0 {name=p50 sig_type=std_logic lab=PNP_E
}
C {lab_pin.sym} 960 680 0 0 {name=p51 sig_type=std_logic lab=NPN_E
}
C {lab_pin.sym} 1140 650 2 0 {name=p52 sig_type=std_logic lab=SUB
}
C {lab_pin.sym} 960 470 0 0 {name=p53 sig_type=std_logic lab=NWELL
}
C {double_exp.sym} 1050 460 1 0 {name=x1 t_r=5n t_f=10n tau_r=100p tau_f=100p q_tot=5p}
C {code_shown.sym} -195 580 0 0 {name=s2 only_toplevel=false value="
.model npn_cust npn (IS=1e-18 BF=100 VAF=50 IKF=0.01 CJE=0.2p CJC=0.1p TF=0.2n TR=2n)
.model pnp_cust pnp (IS=1e-18 BF=100 VAF=50 IKF=0.01 CJE=0.3p CJC=0.15p TF=0.3n TR=3n)
"}
