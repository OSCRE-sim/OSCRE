v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 280 250 280 {
lab=#net1}
N 250 150 250 280 {
lab=#net1}
N 40 150 40 220 {
lab=#net2}
N 40 40 40 90 {
lab=#net3}
N 40 40 40 90 {
lab=#net3}
N 40 -20 250 -20 {
lab=#net4}
N 250 -20 250 90 {
lab=#net4}
C {capa.sym} 40 10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 250 120 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {ind.sym} 40 120 0 0 {name=L1
m=1
value=1n
footprint=1206
device=inductor}
C {vsource_arith.sym} 40 250 0 0 {name=E1 VOL=cos(V(IN))}
