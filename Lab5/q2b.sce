clear;
clc;
s = poly(0, 's');
G = (s^5+1)/(s^5-1);
G = syslin('c',G);
poles = roots(G.den); //open loop poles
// evans finds root-locii of 1+K*G(s)
evans(G,100);  // constructing root locus 
 
