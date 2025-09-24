v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -190 -20 -190 10 {
lab=VDD}
N -190 70 -190 100 {
lab=GND}
N 90 70 90 100 {
lab=GND}
N 90 -20 90 10 {
lab=V_COLL}
N 90 -110 90 -80 {
lab=VDD}
N -10 40 50 40 {
lab=#net1}
N 270 70 270 100 {
lab=GND}
N 90 0 150 0 {
lab=V_COLL}
N 210 -0 270 -0 {
lab=V_OUT}
N 270 -0 270 10 {
lab=V_OUT}
C {npn.sym} 70 40 0 0 {name=Q1
model=mynpn
area=1
m=1}
C {code_shown.sym} 305 240 0 0 {name=s1 only_toplevel=false value="
.options savecurrents
.model mynpn npn (IS=1e-16 BF=100 VAF=100 IKF=0.1 CJE=2p CJC=2p TF=0.1n TR=10n)
.model 130nm_NMOS NMOS(vto=0.4 kp=30u)
.model 130nm_PMOS PMOS(vto=-0.4 kp=6u)
.tran 1p 10n 8n
.save all
"}
C {code.sym} 60 250 0 0 {name=include only_toplevel=false value="
.include /usr/local/share/rad_modeling_blocks/rad_modeling_blocks.spice
"}
C {vsource.sym} -190 40 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} -190 -20 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} -190 100 0 0 {name=l1 lab=GND}
C {gnd.sym} 90 100 0 0 {name=l2 lab=GND}
C {res.sym} 90 -50 0 0 {name=R1
value=100
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 90 -110 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} -10 70 0 0 {name=V2 value="SINE(0.8 0.0005 2000meg 0 0 180)" savecurrent=false}
C {gnd.sym} -10 100 0 0 {name=l3 lab=GND}
C {res.sym} 270 40 0 0 {name=R2
value=10000
footprint=1206
device=resistor
m=1}
C {gnd.sym} 270 100 0 0 {name=l4 lab=GND}
C {capa.sym} 180 0 3 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 90 -10 0 0 {name=p4 sig_type=std_logic lab=V_COLL}
C {lab_pin.sym} 250 0 3 1 {name=p5 sig_type=std_logic lab=V_OUT}
