v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -120 730 -120 {
lab=in}
N 50 -60 730 -60 {
lab=#net1}
N 390 -140 390 -120 {
lab=in}
N 390 -60 390 -40 {
lab=#net1}
C {rad_modeling/xschem_rad_library/devices/isource.sym} 50 -90 0 0 {name=I2 value="EXP(0 \{q_tot_main / (t_f_main-t_r_main+tau_f_main-tau_r_main)\} \{t_r_main\} \{tau_r_main\} \{t_f_main\} \{tau_f_main\})"}
C {rad_modeling/xschem_rad_library/devices/isource.sym} 730 -90 0 0 {name=I3 value="EXP(0 \{q_tot_secondary / (t_f_secondary-t_r_secondary+tau_f_secondary-tau_r_secondary)\} \{t_r_secondary\} \{tau_r_secondary\} \{t_f_secondary\} \{tau_f_secondary\})"}
C {rad_modeling/xschem_rad_library/devices/ipin.sym} 390 -140 0 0 {name=p3 lab=in}
C {rad_modeling/xschem_rad_library/devices/opin.sym} 390 -40 0 0 {name=p4 lab=out}
