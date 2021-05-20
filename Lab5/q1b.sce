clear;
clc;
s = poly(0, 's');
G = (s+1)/((s^2)*(s+3.6));
G = syslin('c',G);
poles = roots(G.den); //open loop poles
// evans finds root-locii of 1+K*G(s)
evans(G);  // constructing root locus 
