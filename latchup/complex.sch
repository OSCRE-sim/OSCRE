v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 1140 -560 1140 -400 {}
L 4 1590 -560 1590 -400 {}
L 4 1140 -400 1540 -400 {}
L 4 1540 -400 1590 -400 {}
L 4 1140 -630 1140 -560 {}
L 4 1140 -630 1590 -630 {}
L 4 1590 -630 1590 -560 {}
L 4 820 -630 1140 -630 {}
L 4 820 -630 820 -340 {}
L 4 820 -340 1620 -340 {}
L 4 1620 -630 1620 -340 {}
L 4 1590 -630 1620 -630 {}
L 4 1230 -470 1230 -370 {}
L 4 1380 -470 1380 -370 {}
T {N-WELL} 1500 -430 0 0 0.4 0.4 {}
N 320 -470 460 -470 {
lab=PNP_B}
N 500 -440 500 -420 {
lab=PNP_C}
N 360 -310 500 -310 {
lab=NPN_B}
N 320 -360 320 -340 {
lab=NPN_C}
N -90 -220 -90 -190 {
lab=VDD}
N -90 -130 -90 -100 {
lab=GND}
N 500 -590 500 -580 {
lab=VDD}
N 320 -590 320 -580 {
lab=VDD}
N 320 -510 320 -470 {
lab=PNP_B}
N 500 -520 500 -510 {
lab=PNP_E}
N 500 -420 500 -380 {
lab=PNP_C}
N 500 -320 500 -310 {
lab=NPN_B}
N 500 -310 500 -270 {
lab=NPN_B}
N 320 -400 320 -360 {
lab=NPN_C}
N 320 -470 320 -460 {
lab=PNP_B}
N 320 -270 320 -260 {
lab=NPN_E}
N 410 -470 410 -430 {
lab=PNP_B}
N 410 -340 410 -310 {
lab=NPN_B}
N 500 -510 500 -500 {
lab=PNP_E}
N 320 -520 320 -510 {
lab=PNP_B}
N 320 -280 320 -270 {
lab=NPN_E}
N 500 -270 500 -260 {
lab=NPN_B}
N 1290 -470 1300 -470 {
lab=#net1}
N 1440 -470 1450 -470 {
lab=#net2}
N 1360 -470 1440 -470 {
lab=#net2}
N 1210 -470 1290 -470 {
lab=#net1}
N 1210 -510 1210 -470 {
lab=#net1}
N 1210 -470 1210 -430 {
lab=#net1}
N 1200 -430 1210 -430 {
lab=#net1}
N 1200 -510 1210 -510 {
lab=#net1}
N 1030 -510 1140 -510 {
lab=#net3}
N 1130 -430 1140 -430 {
lab=#net4}
N 1200 -370 1300 -370 {
lab=#net5}
N 1360 -370 1400 -370 {
lab=#net6}
N 1400 -440 1400 -370 {
lab=#net6}
N 1250 -440 1250 -370 {
lab=#net5}
N 1100 -390 1100 -370 {
lab=#net7}
N 1100 -370 1140 -370 {
lab=#net7}
N 1060 -370 1100 -370 {
lab=#net7}
N 960 -370 1000 -370 {
lab=#net8}
N 990 -510 1030 -510 {
lab=#net3}
N 920 -370 960 -370 {
lab=#net8}
N 960 -470 960 -370 {
lab=#net8}
N 1070 -600 1070 -430 {
lab=N_DRAIN}
N 930 -600 930 -510 {
lab=N_SOURCE}
N 840 -370 860 -370 {
lab=P_TAP}
N 840 -600 840 -370 {
lab=P_TAP}
N 1250 -600 1250 -500 {
lab=P_DRAIN}
N 1400 -600 1400 -500 {
lab=P_SOURCE}
N 1510 -470 1530 -470 {
lab=P_TAP}
N 1530 -600 1530 -470 {
lab=P_TAP}
C {pnp.sym} 480 -470 0 0 {name=Q1
model=mypnp
area=1
m=1}
C {npn.sym} 340 -310 0 1 {name=Q2
model=mynpn
area=1
m=1}
C {res.sym} 500 -230 0 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 500 -550 0 0 {name=R4
value=1
footprint=1206
device=resistor
m=1}
C {gnd.sym} 500 -200 0 0 {name=l1 lab=GND}
C {gnd.sym} 320 -200 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 320 -590 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 500 -590 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 320 -360 0 0 {name=p3 sig_type=std_logic lab=NPN_C
}
C {lab_pin.sym} 500 -420 2 0 {name=p4 sig_type=std_logic lab=PNP_C
}
C {code_shown.sym} 315 120 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.model mynpn npn (IS=1e-16 BF=100 VAF=100 IKF=0.1 CJE=2p CJC=2p TF=0.1n TR=10n)
.model mypnp pnp (IS=1e-16 BF=100 VAF=100 IKF=0.1 CJE=2p CJC=2p TF=0.1n TR=10n)
.model 130nm_NMOS NMOS(vto=0.4 kp=30u)
.model 130nm_PMOS PMOS(vto=-0.4 kp=6u)
.tran 1p 20n 8n
.save all
"}
C {code.sym} 70 130 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {vsource.sym} -90 -160 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} -90 -220 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {gnd.sym} -90 -100 0 0 {name=l3 lab=GND}
C {double_exp.sym} 410 -490 1 0 {name=x1 t_r=9n t_f=9.5n tau_r=10p tau_f=10p q_tot=100p}
C {res.sym} 320 -550 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 320 -230 0 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 320 -430 0 0 {name=R5
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 500 -350 0 0 {name=R6
value=1
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 500 -510 2 0 {name=p6 sig_type=std_logic lab=PNP_E
}
C {lab_pin.sym} 320 -270 0 0 {name=p7 sig_type=std_logic lab=NPN_E
}
C {lab_pin.sym} 500 -300 2 0 {name=p8 sig_type=std_logic lab=NPN_B
}
C {lab_pin.sym} 320 -480 0 0 {name=p9 sig_type=std_logic lab=PNP_B
}
C {pnp.sym} 1270 -470 0 1 {name=Q3
model=mypnp
area=1
m=1}
C {pnp.sym} 1420 -470 0 1 {name=Q4
model=mypnp
area=1
m=1}
C {res.sym} 1330 -470 1 0 {name=R7
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 1480 -470 1 0 {name=R8
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 1330 -370 1 0 {name=R9
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 1170 -430 1 0 {name=R10
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 1170 -510 1 0 {name=R11
value=1
footprint=1206
device=resistor
m=1}
C {npn.sym} 1100 -410 1 1 {name=Q5
model=mynpn
area=1
m=1}
C {npn.sym} 960 -490 1 1 {name=Q6
model=mynpn
area=1
m=1}
C {res.sym} 1170 -370 1 0 {name=R12
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 1030 -370 1 0 {name=R13
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 890 -370 1 0 {name=R14
value=1
footprint=1206
device=resistor
m=1}
C {iopin.sym} 1400 -600 0 0 {name=p10 lab=P_SOURCE}
C {iopin.sym} 1250 -600 0 0 {name=p11 lab=P_DRAIN}
C {iopin.sym} 1070 -600 0 0 {name=p12 lab=N_DRAIN}
C {iopin.sym} 930 -600 0 0 {name=p13 lab=N_SOURCE}
C {iopin.sym} 840 -600 0 0 {name=p14 lab=P_TAP}
C {iopin.sym} 1530 -600 0 0 {name=p15 lab=N_TAP}
