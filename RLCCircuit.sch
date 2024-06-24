v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 20 60 80 {
lab=GND}
C {vsource.sym} 0 -10 0 0 {name=V1 value=3 savecurrent=false}
C {res.sym} 30 -40 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 60 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 60 50 0 0 {name=L1
m=1
value=1n
footprint=1206
device=inductor}
C {gnd.sym} 0 20 0 0 {name=l2 lab=GND}
C {code.sym} -250 -120 0 0 {name=Spiceyyy only_toplevel=false value="

.lib 

.control

.endc

.save all

"}
