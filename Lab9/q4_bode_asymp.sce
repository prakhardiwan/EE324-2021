clear;
clc;

s=poly(0,'s');
G = 1/(s^3+3*s^2+2*s);
sysG = syslin('c',G);

gcf();
evans(sysG);

gcf();
bode(sysG);
bode_asymp(sysG);
