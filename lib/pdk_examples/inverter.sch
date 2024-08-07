v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -110 110 -100 {
lab=O}
N 60 -150 70 -150 {
lab=I}
N 60 -110 60 -70 {
lab=I}
N 60 -70 70 -70 {
lab=I}
N 110 -120 110 -110 {
lab=O}
N 60 -150 60 -110 {
lab=I}
C {sky130_fd_pr/pfet3_01v8.sym} 90 -150 0 0 {name=M22
W=4
L=0.15
body=VDD
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
C {sky130_fd_pr/nfet3_01v8.sym} 90 -70 0 0 {name=M23
W=2
L=0.15
body=GND
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
C {devices/vdd.sym} 110 -180 0 1 {name=l14 lab=VDD}
C {devices/gnd.sym} 110 -40 0 1 {name=l15 lab=GND}
C {devices/ipin.sym} 60 -110 0 0 {name=p1 lab=I}
C {devices/opin.sym} 110 -110 0 0 {name=p2 lab=O}
