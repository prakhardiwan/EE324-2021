clear;
clc;
s = poly(0, 's');
k = 4;
G_3 = 1/(((s-k)^2+1)*((s-k)^2+4));
G_3 = syslin('c',G_3);
poles = roots(G_3.den); //open loop poles
// evans finds root-locii of 1+K*G_3(s)
evans(G_3,100);  // constructinG_3 root locus 
 
