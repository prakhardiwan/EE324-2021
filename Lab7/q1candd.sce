clear;
clc;
s=poly(0,'s');

G = 1/((s+3)*(s+4)*(s+12));
rho=0.8; // Damping ratio reqd
theta=atan(sqrt(1-rho^2)/rho); //Angle made for given rho
a=[0:0.01:10];
fig=scf();
x=-cos(theta)*a;
y=sin(theta)*a;
plot(x, y, 'k--');
for z = 0.01:1:1.01
    C = (s+z)/s;
    H = C*G;
    sysH = syslin('c',H);
    evans(sysH, 1000);
end
xtitle ('Root Locus plot for z = 0.01 and z = 1.01 and Constant damping ratio (0.8) straight line locus');





