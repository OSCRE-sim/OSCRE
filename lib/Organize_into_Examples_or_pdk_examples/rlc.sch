v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -300 150 -300 {
lab=Vin}
N 210 -300 280 -300 {
lab=#net1}
N 340 -300 410 -300 {
lab=Vout}
N 410 -300 410 -240 {
lab=Vout}
N 410 -180 410 -110 {
lab=0}
N 70 -110 410 -110 {
lab=0}
N 70 -150 70 -110 {
lab=0}
N 70 -300 70 -240 {
lab=Vin}
N 70 -180 70 -150 {
lab=0}
C {devices/capa.sym} 310 -300 1 0 {name=C1
m=1
value=50n
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} 180 -300 1 0 {name=L1
m=1
value=10m
footprint=1206
device=inductor}
C {devices/res.sym} 410 -210 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource_arith.sym} 70 -210 0 0 {name=E1 VOL="'3*cos(time*time*time*1e11)'"}
C {devices/lab_pin.sym} 70 -300 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 70 -110 0 0 {name=p3 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 410 -300 0 1 {name=p4 sig_type=std_logic lab=Vout}
C {devices/code.sym} 590 -270 0 0 {name=STIMULI only_toplevel=false value="
.tran 10n 2000u uic
.save all
"}
C {devices/title.sym} 80 0 0 0 {name=l2 author="Ming Sun"}
