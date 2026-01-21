v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 890 -290 890 -130 {}
L 4 1340 -290 1340 -130 {}
L 4 890 -130 1290 -130 {}
L 4 1290 -130 1340 -130 {}
L 4 890 -360 890 -290 {}
L 4 890 -360 1340 -360 {}
L 4 1340 -360 1340 -290 {}
L 4 570 -360 890 -360 {}
L 4 570 -360 570 -70 {}
L 4 570 -70 1370 -70 {}
L 4 1370 -360 1370 -70 {}
L 4 1340 -360 1370 -360 {}
L 4 980 -200 980 -100 {}
L 4 1130 -200 1130 -100 {}
T {N-WELL} 1250 -160 0 0 0.4 0.4 {}
N 1040 -200 1050 -200 {
lab=VBD}
N 1190 -200 1200 -200 {
lab=VBP}
N 1110 -200 1190 -200 {
lab=VBP}
N 960 -200 1040 -200 {
lab=VBD}
N 960 -240 960 -200 {
lab=VBD}
N 960 -200 960 -160 {
lab=VBD}
N 950 -160 960 -160 {
lab=VBD}
N 950 -240 960 -240 {
lab=VBD}
N 780 -240 890 -240 {
lab=#net1}
N 880 -160 890 -160 {
lab=#net2}
N 950 -100 1050 -100 {
lab=#net3}
N 1110 -100 1150 -100 {
lab=#net4}
N 1150 -170 1150 -100 {
lab=#net4}
N 1000 -170 1000 -100 {
lab=#net3}
N 850 -120 850 -100 {
lab=#net5}
N 850 -100 890 -100 {
lab=#net5}
N 810 -100 850 -100 {
lab=#net5}
N 710 -100 750 -100 {
lab=VBN}
N 740 -240 780 -240 {
lab=#net1}
N 670 -100 710 -100 {
lab=VBN}
N 710 -200 710 -100 {
lab=VBN}
N 820 -330 820 -160 {
lab=VDD}
N 680 -330 680 -240 {
lab=VSS}
N 590 -100 610 -100 {
lab=VSS}
N 590 -330 590 -100 {
lab=VSS}
N 1000 -330 1000 -230 {
lab=VDD}
N 1150 -330 1150 -230 {
lab=VDD}
N 1260 -200 1280 -200 {
lab=VDD}
N 1280 -330 1280 -200 {
lab=VDD}
N 190 -190 190 -160 {
lab=VDD}
N 190 -100 190 -70 {
lab=GND}
N 80 -190 80 -160 {
lab=VSS}
N 80 -100 80 -70 {
lab=GND}
N 1150 -400 1150 -330 {
lab=VDD}
N 1000 -400 1000 -330 {
lab=VDD}
N 1280 -400 1280 -330 {
lab=VDD}
N 1150 -400 1280 -400 {
lab=VDD}
N 820 -400 820 -330 {
lab=VDD}
N 820 -400 1000 -400 {
lab=VDD}
N 680 -400 680 -330 {
lab=VSS}
N 590 -400 680 -400 {
lab=VSS}
N 590 -400 590 -330 {
lab=VSS}
N 1130 -110 1130 -100 {
lab=#net4}
C {pnp.sym} 1020 -200 0 1 {name=Q3
model=pnp_cust
area=1
m=1}
C {pnp.sym} 1170 -200 0 1 {name=Q4
model=pnp_cust
area=1
m=1}
C {res.sym} 1080 -200 1 0 {name=R7
value=5
footprint=1206
device=resistor
m=1}
C {res.sym} 1230 -200 1 0 {name=R8
value=1000
footprint=1206
device=resistor
m=1}
C {res.sym} 1080 -100 1 0 {name=R9
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 920 -160 1 0 {name=R10
value=5
footprint=1206
device=resistor
m=1}
C {res.sym} 920 -240 1 0 {name=R11
value=5
footprint=1206
device=resistor
m=1}
C {npn.sym} 850 -140 1 1 {name=Q5
model=npn_cust
area=1
m=1}
C {npn.sym} 710 -220 1 1 {name=Q6
model=npn_cust
area=1
m=1}
C {res.sym} 920 -100 1 0 {name=R12
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 780 -100 1 0 {name=R13
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 640 -100 1 0 {name=R14
value=1000
footprint=1206
device=resistor
m=1}
C {vsource.sym} 190 -130 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} 190 -190 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {gnd.sym} 190 -70 0 0 {name=l3 lab=GND}
C {vsource.sym} 80 -130 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} 80 -190 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {gnd.sym} 80 -70 0 0 {name=l1 lab=GND}
C {code_shown.sym} 295 70 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.ic V(VBP)=5 V(VBN)=0
.tran 1p 15n 0n
.save all
"}
C {code.sym} 60 40 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {code_shown.sym} 295 190 0 0 {name=s2 only_toplevel=false value="
.model npn_cust npn (IS=1e-18 BF=100 VAF=50 IKF=0.01 CJE=0.2p CJC=0.1p TF=0.2n TR=2n)
.model pnp_cust pnp (IS=1e-18 BF=100 VAF=50 IKF=0.01 CJE=0.3p CJC=0.15p TF=0.3n TR=3n)
"}
C {double_exp.sym} 1130 -260 1 0 {name=x3 t_r=5n t_f=10n tau_r=100p tau_f=100p q_tot=5p}
C {lab_pin.sym} 1150 -390 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 590 -390 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1120 -200 1 0 {name=p4 sig_type=std_logic lab=VBP
}
C {lab_pin.sym} 730 -100 1 0 {name=p5 sig_type=std_logic lab=VBN
}
C {lab_pin.sym} 820 -400 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 980 -200 1 0 {name=p8 sig_type=std_logic lab=VBD
}
