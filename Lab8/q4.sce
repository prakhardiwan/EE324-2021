clear();
clc();
s = poly(0,'s');

G = 4/((s^2+2*s+4)*(s+0.1));
G  = syslin('c',G);
evans(G,40);

