clear;
clc;
s = poly(0, 's');
G_2 = 1/((s^2+1)*(s^2+4));
G_2 = syslin('c',G_2);
poles = roots(G_2.den); //open loop poles
// evans finds root-locii of 1+K*G_2(s)
evans(G_2,100);  // constructinG_2 root locus 
 
