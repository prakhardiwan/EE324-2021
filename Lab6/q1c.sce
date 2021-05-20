clear;
clc;
s=poly(0,'s');

G = 1/((s+3)*(s+4)*(s+12));
sysG = syslin('c',G);

fig=scf();
evans(sysG);
