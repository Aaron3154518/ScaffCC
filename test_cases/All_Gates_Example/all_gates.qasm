OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[1];
x q[0];
y q[0];
z q[0];
h q[0];
t q[0];
s q[0];
tdg q[0];
sdg q[0];
rx( 3.14159 ) q[0];
ry( 3.14159 ) q[0];
rz( 3.14159 ) q[0];
reset q[0];
h q[0];
reset q[0];
h q[0];
measure q[0] -> c[0];
measure q[0] -> c[0];
cx q[0], q[1];
h q[2];
t q[0];
t q[1];
t q[2];
cx q[1], q[0];
cx q[2], q[1];
cx q[0], q[2];
tdg q[1];
t q[2];
cx q[0], q[1];
tdg q[0];
tdg q[1];
cx q[2], q[1];
cx q[0], q[2];
cx q[1], q[0];
h q[2];
cx q[2], q[1];
h q[2]
cx q[1],  q[2]
tdg q[2]
cx q[0],  q[2]
t q[2]
cx q[1],  q[2]
tdg q[2]
cx q[0],  q[2]
t q[1]
t q[2]
h q[2]
cx q[0],  q[1]
t q[0]
tdg q[1]
cx q[2], q[1];
