v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -40 100 -40 {lab=GND}
N 100 -70 100 -40 {lab=GND}
N 60 -70 100 -70 {lab=GND}
C {vsource.sym} -140 -30 0 0 {name=Vgs value=1.8 savecurrent=false}
C {gnd.sym} -140 -60 2 0 {name=l1 lab=GND}
C {lab_pin.sym} -140 0 2 1 {name=p1 sig_type=std_logic lab=Vgs}
C {code_shown.sym} -40 -170 0 0 {name=Dc_Sweep_Analysis only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc Vds 0 3 1m
.save all
.end"}
C {sky130_fd_pr/pfet_01v8.sym} 40 -40 0 0 {name=M1
W=1
L=0.15
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
C {vsource.sym} -70 -40 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -70 -70 2 0 {name=l2 lab=GND}
C {gnd.sym} 60 -70 2 0 {name=l3 lab=GND}
C {lab_pin.sym} -70 -10 0 0 {name=p2 sig_type=std_logic lab=Vds}
C {lab_pin.sym} 20 -40 0 0 {name=p3 sig_type=std_logic lab=Vgs}
C {lab_pin.sym} 60 -10 0 0 {name=p4 sig_type=std_logic lab=Vds}
