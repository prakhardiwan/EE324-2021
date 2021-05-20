clear;
clc;
s=poly(0,'s');
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
