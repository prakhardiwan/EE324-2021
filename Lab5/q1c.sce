clear;
clc;
s = poly(0, 's');
G = (s+0.4)/((s^2)*(s+3.6));
G = syslin('c',G);
poles = roots(G.den); //open loop poles
// evans finds root-locii of 1+K*G(s)
evans(G,50);  // constructing root locus 
