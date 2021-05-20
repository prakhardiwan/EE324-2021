clear;
clc;
s = poly(0, 's');
k = 0;
G = ((s+k)^2+4)/((s+k)^2-4);
G = syslin('c',G);
poles = roots(G.den); //open loop poles
// evans finds root-locii of 1+K*G(s)
evans(G);  // constructing root locus 
