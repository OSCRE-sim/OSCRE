v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -250 140 -220 {
lab=VDD}
N 30 -170 30 -140 {
lab=VSS}
N 30 -80 30 -50 {
lab=GND}
N 140 -80 140 -30 {
lab=VSS}
N 1070 450 1070 500 {
lab=VSS}
N 730 450 730 500 {
lab=VSS}
N 770 420 870 420 {
lab=VB}
N 730 360 730 390 {
lab=VB}
N 730 380 820 380 {
lab=VB}
N 820 380 820 420 {
lab=VB}
N 730 260 730 300 {
lab=VDD}
N 710 420 730 420 {
lab=VSS}
N 710 420 710 460 {
lab=VSS}
N 710 460 730 460 {
lab=VSS}
N 1070 420 1090 420 {
lab=VBN}
N 870 420 1030 420 {
lab=VB}
N 1070 360 1070 390 {
lab=VS}
N 1070 360 1170 360 {
lab=VS}
N 970 360 1070 360 {
lab=VS}
N 970 330 1170 330 {
lab=VBN}
N 970 240 970 300 {
lab=#net1}
N 1170 240 1170 300 {
lab=VOUT}
N 970 270 1070 270 {
lab=#net1}
N 960 210 970 210 {
lab=VBP}
N 1170 210 1180 210 {
lab=VBP}
N 1010 210 1130 210 {
lab=#net1}
N 1070 210 1070 270 {
lab=#net1}
N 970 160 970 180 {
lab=VDD}
N 1170 160 1170 180 {
lab=VDD}
N 1170 270 1230 270 {
lab=VOUT}
N 1210 330 1250 330 {
lab=VINP}
N 890 330 930 330 {
lab=VINN}
N 280 -80 280 -30 {
lab=VSS}
N 280 -190 280 -140 {
lab=VINP}
N 470 -80 470 -30 {
lab=VSS}
N 470 -190 470 -140 {
lab=VINN}
N 850 480 850 500 {
lab=VSS}
N 690 -80 690 -30 {
lab=VSS}
N 690 -190 690 -140 {
lab=VIN}
N 1070 900 1070 950 {
lab=VSS}
N 730 900 730 950 {
lab=VSS}
N 770 870 870 870 {
lab=VB_OTHER}
N 730 810 730 840 {
lab=VB_OTHER}
N 730 830 820 830 {
lab=VB_OTHER}
N 820 830 820 870 {
lab=VB_OTHER}
N 730 710 730 750 {
lab=VDD}
N 710 870 730 870 {
lab=VSS}
N 710 870 710 910 {
lab=VSS}
N 710 910 730 910 {
lab=VSS}
N 1070 870 1090 870 {
lab=VSS}
N 870 870 1030 870 {
lab=VB_OTHER}
N 1070 810 1070 840 {
lab=VS_OTHER}
N 1070 810 1170 810 {
lab=VS_OTHER}
N 970 810 1070 810 {
lab=VS_OTHER}
N 970 780 1170 780 {
lab=VSS}
N 970 690 970 750 {
lab=#net2}
N 1170 690 1170 750 {
lab=VOUT_OTHER}
N 970 720 1070 720 {
lab=#net2}
N 960 660 970 660 {
lab=VDD}
N 1170 660 1180 660 {
lab=VDD}
N 1010 660 1130 660 {
lab=#net2}
N 1070 660 1070 720 {
lab=#net2}
N 970 610 970 630 {
lab=VDD}
N 1170 610 1170 630 {
lab=VDD}
N 1170 720 1230 720 {
lab=VOUT_OTHER}
N 1210 780 1250 780 {
lab=VINP}
N 890 780 930 780 {
lab=VINN}
N 850 930 850 950 {
lab=VSS}
N 140 -160 140 -140 {
lab=VDD}
N 140 -220 140 -160 {
lab=VDD}
N 1560 530 1700 530 {
lab=VBP}
N 1740 560 1740 580 {
lab=PNP_C}
N 1600 690 1740 690 {
lab=VBN}
N 1560 640 1560 660 {
lab=NPN_C}
N 1740 410 1740 420 {
lab=VDD}
N 1560 410 1560 420 {
lab=VDD}
N 1560 490 1560 530 {
lab=VBP}
N 1740 480 1740 490 {
lab=PNP_E}
N 1740 580 1740 620 {
lab=PNP_C}
N 1740 680 1740 690 {
lab=VBN}
N 1740 690 1740 730 {
lab=VBN}
N 1560 600 1560 640 {
lab=NPN_C}
N 1560 530 1560 540 {
lab=VBP}
N 1560 730 1560 740 {
lab=NPN_E}
N 1650 530 1650 570 {
lab=VBP}
N 1650 660 1650 690 {
lab=VBN}
N 1740 490 1740 500 {
lab=PNP_E}
N 1560 480 1560 490 {
lab=VBP}
N 1560 720 1560 730 {
lab=NPN_E}
N 1740 730 1740 740 {
lab=VBN}
C {code_shown.sym} -25 250 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.ic V(VBP)=1.8 V(VBN)=0
.tran 1p 25n 0n
.save all
"}
C {code.sym} -180 70 0 0 {name=sT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {code.sym} -170 220 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {sky130_fd_pr/nfet_01v8.sym} 1050 420 0 0 {name=M2
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
C {vsource.sym} 140 -110 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} 140 -250 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {vsource.sym} 30 -110 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} 30 -170 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {gnd.sym} 30 -50 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 140 -30 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1070 500 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 750 420 0 1 {name=M1
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
C {lab_pin.sym} 730 500 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {isource.sym} 730 330 0 0 {name=I0 value=100u}
C {lab_pin.sym} 730 260 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 950 330 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 1190 330 0 1 {name=M4
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
C {lab_pin.sym} 1070 330 1 0 {name=p1 sig_type=std_logic lab=VBN}
C {sky130_fd_pr/pfet_01v8.sym} 990 210 0 1 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 1150 210 0 0 {name=M6
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
C {lab_pin.sym} 960 210 2 1 {name=p6 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1180 210 0 1 {name=p8 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1170 160 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 970 160 2 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1230 270 0 1 {name=p11 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 1250 330 0 1 {name=p12 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 890 330 2 1 {name=p13 sig_type=std_logic lab=VINN}
C {vsource.sym} 280 -110 0 0 {name=V4 value="SIN(0.8 0.01 1e8)" savecurrent=false}
C {lab_pin.sym} 280 -30 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 -190 0 0 {name=p14 sig_type=std_logic lab=VINP}
C {vsource.sym} 470 -110 0 0 {name=V3 value="SIN(0.8 0.01 1e8 0 0 180)" savecurrent=false}
C {lab_pin.sym} 470 -30 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 470 -190 0 0 {name=p17 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 1070 370 0 1 {name=p18 sig_type=std_logic lab=VS}
C {lab_pin.sym} 900 420 3 1 {name=p19 sig_type=std_logic lab=VB}
C {capa.sym} 850 450 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 850 500 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1090 420 2 0 {name=p23 sig_type=std_logic lab=VBN}
C {vsource.sym} 690 -110 0 0 {name=V5 value="SIN(0.8 0.02 1e6)" savecurrent=false}
C {lab_pin.sym} 690 -30 0 0 {name=p28 sig_type=std_logic lab=VSS
value="SIN(0.8 0.02 1e6)"}
C {lab_pin.sym} 690 -190 0 0 {name=p29 sig_type=std_logic lab=VIN}
C {sky130_fd_pr/nfet_01v8.sym} 1050 870 0 0 {name=M7
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
C {lab_pin.sym} 1070 950 0 0 {name=p31 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 750 870 0 1 {name=M8
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
C {lab_pin.sym} 730 950 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {isource.sym} 730 780 0 0 {name=I1 value=100u}
C {lab_pin.sym} 730 710 0 0 {name=p33 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 950 780 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 1190 780 0 1 {name=M10
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
C {lab_pin.sym} 1070 780 1 0 {name=p34 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 990 660 0 1 {name=M11
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
C {sky130_fd_pr/pfet_01v8.sym} 1150 660 0 0 {name=M12
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
C {lab_pin.sym} 960 660 2 1 {name=p35 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1180 660 0 1 {name=p36 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1170 610 0 1 {name=p37 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 970 610 2 1 {name=p38 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1230 720 0 1 {name=p39 sig_type=std_logic lab=VOUT_OTHER}
C {lab_pin.sym} 1250 780 0 1 {name=p40 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 890 780 2 1 {name=p41 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 1070 820 0 1 {name=p42 sig_type=std_logic lab=VS_OTHER}
C {lab_pin.sym} 900 870 3 1 {name=p43 sig_type=std_logic lab=VB_OTHER}
C {capa.sym} 850 900 0 0 {name=C2
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 850 950 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1090 870 2 0 {name=p45 sig_type=std_logic lab=VSS}
C {pnp.sym} 1720 530 0 0 {name=Q1
model=pnp_cust
area=1
m=1}
C {npn.sym} 1580 690 0 1 {name=Q2
model=npn_cust
area=1
m=1}
C {res.sym} 1740 770 0 0 {name=R3
value=1000
footprint=1206
device=resistor
m=1}
C {res.sym} 1740 450 0 0 {name=R4
value=5
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1740 800 0 0 {name=l2 lab=GND}
C {gnd.sym} 1560 800 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1560 410 0 0 {name=p46 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1740 410 0 0 {name=p47 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1560 640 0 0 {name=p48 sig_type=std_logic lab=NPN_C
}
C {lab_pin.sym} 1740 580 2 0 {name=p49 sig_type=std_logic lab=PNP_C
}
C {res.sym} 1560 450 0 0 {name=R1
value=1000
footprint=1206
device=resistor
m=1}
C {res.sym} 1560 770 0 0 {name=R2
value=5
footprint=1206
device=resistor
m=1}
C {res.sym} 1560 570 0 0 {name=R5
value=2
footprint=1206
device=resistor
m=1}
C {res.sym} 1740 650 0 0 {name=R6
value=2
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1740 490 2 0 {name=p50 sig_type=std_logic lab=PNP_E
}
C {lab_pin.sym} 1560 730 0 0 {name=p51 sig_type=std_logic lab=NPN_E
}
C {lab_pin.sym} 1740 700 2 0 {name=p52 sig_type=std_logic lab=VBN
}
C {lab_pin.sym} 1560 520 0 0 {name=p53 sig_type=std_logic lab=VBP
}
C {code_shown.sym} 25 60 0 0 {name=s2 only_toplevel=false value="
.model npn_cust npn (IS=1e-18 BF=100 VAF=50 IKF=0.01 CJE=0.2p CJC=0.1p TF=0.2n TR=2n)
.model pnp_cust pnp (IS=1e-18 BF=100 VAF=50 IKF=0.01 CJE=0.3p CJC=0.15p TF=0.3n TR=3n)
"}
C {double_exp.sym} 1650 510 1 0 {name=x2 t_r=10n t_f=15n tau_r=100p tau_f=100p q_tot=10p}
