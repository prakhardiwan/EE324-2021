clear;
clc;
s=poly(0,'s');
z = 0.01;
G = 1/((s+1)*(s+2));
sysG = syslin('c',G);
pi = 3.1415;
// 10 % OS 
theta=atan((pi/log(10))); //Angle made for given rho
a=[0:0.01:10];
fig=scf();
evans(sysG, 2000);
x=-cos(theta)*a;
y=sin(theta)*a;
plot(x, y, 'k--');
// half t_s as 2a implies Re(Pole) = -3 and upon intersection of locii we get point as -3+4.094j
z = 8.223;
C = (s+z);
H = C*G;
sysH = syslin('c',H);
fig=scf();
evans(sysH, 200);

