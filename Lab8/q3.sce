clear();
s = poly(0,'s');

num = 1;
den = (s^3+11*s^2+31*s+21);
kp = 69.5;
kd = 17.5
G = num/den;
G = G*(kp+kd*s);
H = G/(1+G);

sys = syslin('c', G);

scf();
evans(sys, 100);

k = 3;
G1 = 4/(((s+k)+1)*((s+k)^2+4));
sys1 = syslin('c', G1);

scf();
evans(sys1, 100);

scf();
bode(sys1);

sys2 = sys1*((s+100)^2);

scf();
bode(sys2);

scf();
evans(sys2,1000);
sgrid();
