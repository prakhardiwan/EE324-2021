clear;
clc;
s = poly(0, 's');
num = 1;
den = (s^3+11*s^2+31*s+21);
G = num/den;
evans(syslin('c',G));  // constructing root locus 

