v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Precharge Enable} 260 -1430 0 0 0.4 0.4 {}
T {Word Line Enable} 260 -1290 0 0 0.4 0.4 {}
T {Write Enable} 310 -700 0 0 0.4 0.4 {}
T {Write Data} 330 -580 0 0 0.4 0.4 {}
T {Sense Enable} 310 -960 0 0 0.4 0.4 {}
N 820 -1190 830 -1190 {
lab=Q_NOT}
N 830 -1190 830 -1090 {
lab=Q_NOT}
N 820 -1090 830 -1090 {
lab=Q_NOT}
N 870 -1190 880 -1190 {
lab=Q}
N 870 -1190 870 -1090 {
lab=Q}
N 870 -1090 880 -1090 {
lab=Q}
N 780 -1160 780 -1120 {
lab=Q}
N 920 -1160 920 -1120 {
lab=Q_NOT}
N 780 -1230 780 -1220 {
lab=VDD}
N 780 -1230 920 -1230 {
lab=VDD}
N 920 -1230 920 -1220 {
lab=VDD}
N 780 -1060 780 -1050 {
lab=GND}
N 780 -1050 920 -1050 {
lab=GND}
N 920 -1060 920 -1050 {
lab=GND}
N 780 -1140 870 -1130 {
lab=Q}
N 830 -1150 920 -1140 {
lab=Q_NOT}
N 920 -1140 990 -1140 {
lab=Q_NOT}
N 710 -1140 780 -1140 {
lab=Q}
N 680 -1280 1020 -1280 {
lab=WL}
N 680 -1280 680 -1180 {
lab=WL}
N 1020 -1280 1020 -1180 {
lab=WL}
N 850 -1460 850 -1440 {
lab=PC}
N 620 -1140 650 -1140 {
lab=BIT}
N 1050 -1140 1080 -1140 {
lab=BIT_BAR}
N 620 -1430 620 -1140 {
lab=BIT}
N 1080 -1430 1080 -1140 {
lab=BIT_BAR}
N 880 -1400 1080 -1400 {
lab=BIT_BAR}
N 620 -1400 820 -1400 {
lab=BIT}
N 660 -1460 1040 -1460 {
lab=PC}
N 620 -1510 620 -1490 {
lab=VDD}
N 620 -1510 1080 -1510 {
lab=VDD}
N 1080 -1510 1080 -1490 {
lab=VDD}
N 590 -1400 620 -1400 {
lab=BIT}
N 1080 -1400 1110 -1400 {
lab=BIT_BAR}
N 490 -1280 680 -1280 {
lab=WL}
N 740 -1460 740 -1420 {
lab=PC}
N 490 -1420 740 -1420 {
lab=PC}
N 660 -630 1040 -630 {
lab=WE}
N 740 -690 740 -630 {
lab=WE}
N 490 -690 740 -690 {
lab=WE}
N 850 -460 850 -440 {
lab=#net1}
N 660 -450 850 -450 {
lab=#net1}
N 890 -490 900 -490 {
lab=WD}
N 900 -490 900 -410 {
lab=WD}
N 890 -410 900 -410 {
lab=WD}
N 900 -450 1040 -450 {
lab=WD}
N 980 -570 980 -450 {
lab=WD}
N 490 -570 980 -570 {
lab=WD}
N 620 -600 620 -480 {
lab=#net2}
N 1080 -600 1080 -480 {
lab=#net3}
N 620 -420 620 -370 {
lab=GND}
N 620 -370 1080 -370 {
lab=GND}
N 1080 -420 1080 -370 {
lab=GND}
N 850 -380 850 -370 {
lab=GND}
N 900 -880 910 -880 {
lab=BIT_BAR}
N 910 -880 910 -780 {
lab=BIT_BAR}
N 900 -780 910 -780 {
lab=BIT_BAR}
N 950 -880 960 -880 {
lab=BIT}
N 950 -880 950 -780 {
lab=BIT}
N 950 -780 960 -780 {
lab=BIT}
N 860 -850 860 -810 {
lab=BIT}
N 1000 -850 1000 -810 {
lab=BIT_BAR}
N 860 -920 860 -910 {
lab=#net4}
N 860 -920 1000 -920 {
lab=#net4}
N 1000 -920 1000 -910 {
lab=#net4}
N 860 -750 860 -740 {
lab=#net5}
N 860 -740 1000 -740 {
lab=#net5}
N 1000 -750 1000 -740 {
lab=#net5}
N 860 -830 950 -820 {
lab=BIT}
N 910 -840 1000 -830 {
lab=BIT_BAR}
N 620 -1140 620 -660 {
lab=BIT}
N 1080 -1140 1080 -660 {
lab=BIT_BAR}
N 710 -960 710 -940 {
lab=#net6}
N 660 -990 670 -990 {
lab=SE}
N 660 -990 660 -910 {
lab=SE}
N 660 -910 670 -910 {
lab=SE}
N 710 -880 710 -870 {
lab=GND}
N 710 -950 890 -950 {
lab=#net6}
N 490 -950 660 -950 {
lab=SE}
N 660 -910 660 -710 {
lab=SE}
N 660 -710 890 -710 {
lab=SE}
N 620 -830 860 -830 {
lab=BIT}
N 1000 -830 1080 -830 {
lab=BIT_BAR}
C {devices/code_shown.sym} 1310 -280 0 0 {name=STIMULI only_toplevel=false value="
.tran 1n 1000n
.save all
"}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Collin Lambert"}
C {sky130_fd_pr/nfet3_01v8.sym} 900 -1090 0 0 {name=M1
W=3
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
C {sky130_fd_pr/pfet3_01v8.sym} 900 -1190 0 0 {name=M2
W=1
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
C {sky130_fd_pr/nfet3_01v8.sym} 800 -1090 0 1 {name=M3
W=3
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
C {sky130_fd_pr/pfet3_01v8.sym} 800 -1190 0 1 {name=M4
W=1
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
C {sky130_fd_pr/nfet3_01v8.sym} 680 -1160 3 1 {name=M5
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
C {sky130_fd_pr/nfet3_01v8.sym} 1020 -1160 1 0 {name=M6
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
C {devices/vdd.sym} 850 -1230 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 490 -1280 0 0 {name=p1 sig_type=std_logic lab=WL
}
C {devices/gnd.sym} 850 -1050 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 1400 -1020 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/vdd.sym} 1400 -1050 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 1400 -990 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 640 -1460 0 1 {name=M7
W=3
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
C {sky130_fd_pr/pfet3_01v8.sym} 1060 -1460 0 0 {name=M8
W=3
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
C {sky130_fd_pr/pfet3_01v8.sym} 850 -1420 3 1 {name=M9
W=5
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
C {devices/vdd.sym} 850 -1510 0 0 {name=l6 lab=VDD}
C {devices/capa.sym} 1110 -1370 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 490 -1420 0 0 {name=p2 sig_type=std_logic lab=PC
}
C {devices/capa.sym} 590 -1370 0 1 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 590 -1340 0 1 {name=l7 lab=GND}
C {devices/gnd.sym} 1110 -1340 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 780 -1150 0 0 {name=p3 sig_type=std_logic lab=Q
}
C {devices/lab_pin.sym} 920 -1150 0 1 {name=p4 sig_type=std_logic lab=Q_NOT
}
C {devices/lab_pin.sym} 620 -1150 0 0 {name=p5 sig_type=std_logic lab=BIT
}
C {devices/lab_pin.sym} 1080 -1150 0 1 {name=p6 sig_type=std_logic lab=BIT_BAR
}
C {devices/lab_pin.sym} 490 -690 0 0 {name=p7 sig_type=std_logic lab=WE
}
C {sky130_fd_pr/nfet3_01v8.sym} 1060 -630 0 0 {name=M10
W=5
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
C {sky130_fd_pr/nfet3_01v8.sym} 640 -630 0 1 {name=M11
W=5
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
C {sky130_fd_pr/pfet3_01v8.sym} 870 -490 0 1 {name=M12
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
C {sky130_fd_pr/nfet3_01v8.sym} 870 -410 0 1 {name=M13
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
C {devices/vdd.sym} 850 -520 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} 850 -370 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 490 -570 0 0 {name=p8 sig_type=std_logic lab=WD
}
C {sky130_fd_pr/nfet3_01v8.sym} 1060 -450 0 0 {name=M14
W=5
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
C {sky130_fd_pr/nfet3_01v8.sym} 640 -450 0 1 {name=M15
W=5
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
C {devices/vsource.sym} 1400 -900 0 0 {name=VPC value="PWL(0 1.8 9.5n 1.8 10n 0 49.5n 0 50n 1.8 ""200n 1.8 209.5n 1.8 210n 0 249.5n 0 250n 1.8 ""400n 1.8 409.5n 1.8 410n 0 449.5n 0 450n 1.8)" savecurrent=false}
C {devices/gnd.sym} 1400 -870 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 1400 -930 1 0 {name=p9 sig_type=std_logic lab=PC
}
C {devices/vsource.sym} 1400 -770 0 0 {name=VWL value="PWL(0 0 59.5n 0 60n 1.8 99.5n 1.8 100n 0 ""200n 0 259.5n 0 260n 1.8 299.5n 1.8 300n 0 ""400n 0 459.5n 0 460n 1.8 499.5n 1.8 500n 0)" savecurrent=false}
C {devices/gnd.sym} 1400 -740 0 0 {name=VWL1 lab=GND
value="PWL(0 0 59n 0 60n 1.8 99n 1.8 100n 0)"}
C {devices/lab_pin.sym} 1400 -800 1 0 {name=VWL2 sig_type=std_logic lab=WL
value="PWL(0 0 59n 0 60n 1.8 99n 1.8 100n 0)"}
C {devices/vsource.sym} 1400 -640 0 0 {name=VWD1 value="PWL(0 1.8 149.5n 1.8 150n 0)" savecurrent=false}
C {devices/gnd.sym} 1400 -610 0 0 {name=VWL4 lab=GND
value="PWL(0 0 59n 0 60n 1.8 99n 1.8 100n 0)"}
C {devices/lab_pin.sym} 1400 -670 1 0 {name=VWD sig_type=std_logic lab=WD
value="PWL(0 0 59n 0 60n 1.8 99n 1.8 100n 0)"}
C {devices/vsource.sym} 1400 -510 0 0 {name=VWE value="PWL(0 0 69.5n 0 70n 1.8 109.5n 1.8 110n 0 ""200n 0 269.5n 0 270n 1.8 309.5n 1.8 310n 0)" savecurrent=false}
C {devices/gnd.sym} 1400 -480 0 0 {name=VWL5 lab=GND
value="PWL(0 0 59n 0 60n 1.8 99n 1.8 100n 0)"}
C {devices/lab_pin.sym} 1400 -540 1 0 {name=VWL6 sig_type=std_logic lab=WE
value="PWL(0 0 59n 0 60n 1.8 99n 1.8 100n 0)"}
C {devices/code.sym} 1520 -290 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/nfet3_01v8.sym} 980 -780 0 0 {name=M16
W=7
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
C {sky130_fd_pr/pfet3_01v8.sym} 980 -880 0 0 {name=M17
W=5
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
C {sky130_fd_pr/nfet3_01v8.sym} 880 -780 0 1 {name=M18
W=7
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
C {sky130_fd_pr/pfet3_01v8.sym} 880 -880 0 1 {name=M19
W=5
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
C {devices/vdd.sym} 930 -980 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 930 -680 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 910 -950 0 0 {name=M20
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
C {sky130_fd_pr/nfet3_01v8.sym} 910 -710 0 0 {name=M21
W=6
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
C {devices/lab_pin.sym} 490 -950 0 0 {name=p10 sig_type=std_logic lab=SE
}
C {sky130_fd_pr/pfet3_01v8.sym} 690 -990 0 0 {name=M22
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
C {sky130_fd_pr/nfet3_01v8.sym} 690 -910 0 0 {name=M23
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
C {devices/vdd.sym} 710 -1020 0 1 {name=l14 lab=VDD}
C {devices/gnd.sym} 710 -870 0 1 {name=l15 lab=GND}
C {devices/vsource.sym} 1400 -370 0 0 {name=VSE value="PWL(0 0 459.5n 0 460n 1.8 469.5n 1.8 470n 0)" savecurrent=false}
C {devices/gnd.sym} 1400 -340 0 0 {name=VWL3 lab=GND
value="PWL(0 0 59n 0 60n 1.8 99n 1.8 100n 0)"}
C {devices/lab_pin.sym} 1400 -400 1 0 {name=SE sig_type=std_logic lab=SE
value="PWL(0 0 59n 0 60n 1.8 99n 1.8 100n 0)"}
