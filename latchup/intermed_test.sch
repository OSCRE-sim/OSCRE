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
N 1120 210 1260 210 {
lab=VBP}
N 1300 240 1300 260 {
lab=PNP_C}
N 1160 370 1300 370 {
lab=VBN}
N 1120 320 1120 340 {
lab=NPN_C}
N 1300 90 1300 100 {
lab=VDD}
N 1120 90 1120 100 {
lab=VDD}
N 1120 170 1120 210 {
lab=VBP}
N 1300 160 1300 170 {
lab=PNP_E}
N 1300 260 1300 300 {
lab=PNP_C}
N 1300 360 1300 370 {
lab=VBN}
N 1300 370 1300 410 {
lab=VBN}
N 1120 280 1120 320 {
lab=NPN_C}
N 1120 210 1120 220 {
lab=VBP}
N 1120 410 1120 420 {
lab=NPN_E}
N 1210 210 1210 250 {
lab=VBP}
N 1210 340 1210 370 {
lab=VBN}
N 1300 170 1300 180 {
lab=PNP_E}
N 1120 160 1120 170 {
lab=VBP}
N 1120 400 1120 410 {
lab=NPN_E}
N 1300 410 1300 420 {
lab=VBN}
C {vsource.sym} -70 -110 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} -70 -170 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {gnd.sym} -70 -50 0 0 {name=l3 lab=GND}
C {vsource.sym} -180 -110 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -180 -170 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {gnd.sym} -180 -50 0 0 {name=l1 lab=GND}
C {code_shown.sym} 35 90 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.ic V(VBP)=5 V(VBN)=0
.tran 1p 15n 0n
.save all
"}
C {code.sym} -200 60 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {double_exp.sym} 1210 190 1 0 {name=x3 t_r=5n t_f=10n tau_r=100p tau_f=100p q_tot=4p}
C {code_shown.sym} 35 210 0 0 {name=s2 only_toplevel=false value="
.model npn_cust npn (IS=1e-18 BF=100 VAF=50 IKF=0.01 CJE=0.2p CJC=0.1p TF=0.2n TR=2n)
.model pnp_cust pnp (IS=1e-18 BF=100 VAF=50 IKF=0.01 CJE=0.3p CJC=0.15p TF=0.3n TR=3n)
"}
C {pnp.sym} 1280 210 0 0 {name=Q1
model=pnp_cust
area=1
m=1}
C {npn.sym} 1140 370 0 1 {name=Q2
model=npn_cust
area=1
m=1}
C {res.sym} 1300 450 0 0 {name=R3
value=1000
footprint=1206
device=resistor
m=1}
C {res.sym} 1300 130 0 0 {name=R4
value=5
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1300 480 0 0 {name=l2 lab=GND}
C {gnd.sym} 1120 480 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 1120 90 0 0 {name=p46 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1300 90 0 0 {name=p47 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1120 320 0 0 {name=p48 sig_type=std_logic lab=NPN_C
}
C {lab_pin.sym} 1300 260 2 0 {name=p49 sig_type=std_logic lab=PNP_C
}
C {res.sym} 1120 130 0 0 {name=R1
value=1000
footprint=1206
device=resistor
m=1}
C {res.sym} 1120 450 0 0 {name=R2
value=5
footprint=1206
device=resistor
m=1}
C {res.sym} 1120 250 0 0 {name=R5
value=2
footprint=1206
device=resistor
m=1}
C {res.sym} 1300 330 0 0 {name=R6
value=2
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1300 170 2 0 {name=p50 sig_type=std_logic lab=PNP_E
}
C {lab_pin.sym} 1120 410 0 0 {name=p51 sig_type=std_logic lab=NPN_E
}
C {lab_pin.sym} 1300 380 2 0 {name=p52 sig_type=std_logic lab=VBN
}
C {lab_pin.sym} 1120 200 0 0 {name=p53 sig_type=std_logic lab=VBP
}
