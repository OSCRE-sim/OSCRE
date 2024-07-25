v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Created from following paper https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=5341413} 280 80 0 0 0.3 0.3 {}
N 680 -110 740 -110 {
lab=CAP_V}
N 680 -50 740 -50 {
lab=GND}
N 540 -110 680 -110 {
lab=CAP_V}
N 540 -50 680 -50 {
lab=GND}
N 290 -110 540 -110 {
lab=CAP_V}
N 290 -50 540 -50 {
lab=GND}
C {rad_modeling/xschem_rad_library/devices/bsource.sym} 300 -290 2 0 {name=B2 VAR=I FUNC="-I(B1)"}
C {rad_modeling/xschem_rad_library/devices/ipin.sym} 300 -320 0 0 {name=p3 lab=in}
C {rad_modeling/xschem_rad_library/devices/opin.sym} 300 -260 0 0 {name=p5 lab=out}
C {rad_modeling/xschem_rad_library/devices/bsource.sym} 290 -80 2 0 {name=B1 VAR=I FUNC="\{capacitance*(-V(CAP_V))*(V(in)-V(out))*k\}"}
C {rad_modeling/xschem_rad_library/devices/bsource.sym} 570 -80 2 0 {name=B3 VAR=I FUNC="\{recomb_param*(-V(CAP_V)*capacitance)*k\}"}
C {rad_modeling/xschem_rad_library/devices/lab_pin.sym} 620 -110 1 0 {name=p1 sig_type=std_logic lab=CAP_V}
C {rad_modeling/xschem_rad_library/devices/capa.sym} 620 -80 0 0 {name=C1
m=1
value=\{capacitance\}
footprint=1206
device="ceramic capacitor"}
C {rad_modeling/xschem_rad_library/devices/isource.sym} 740 -80 0 0 {name=I1 value="EXP(0 \{q_tot / (t_f-t_r+tau_f-tau_r)\} \{t_r\} \{tau_r\} \{t_f\} \{tau_f\})"}
C {rad_modeling/xschem_rad_library/devices/gnd.sym} 290 -50 0 0 {name=l1 lab=GND}
C {rad_modeling/xschem_rad_library/devices/code_shown.sym} 280 40 0 0 {name=s2 only_toplevel=false value="
.param capacitance=1p
"}
