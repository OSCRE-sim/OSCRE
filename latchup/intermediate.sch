v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
