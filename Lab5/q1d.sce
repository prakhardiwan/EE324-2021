clear;
clc;
s = poly(0, 's');
p = 0;
G = (s+p)/(s*(s+1)*(s+2));
G = syslin('c',G);
poles = roots(G.den); //open loop poles
// evans finds root-locii of 1+K*G(s)
evans(G,1000);  // constructing root locus 
end
