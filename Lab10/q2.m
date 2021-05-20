clear;
clc;

syms s;
s=tf('s');

G1 = (s+3)/((s+1)*(s+4));
[n1,d1] = tfdata(G1,'v');

[A1,B1,C1,D1] = tf2ss(n1,d1)

G2 = (s+1)/(s^2+5*s+4);
[n2,d2] = tfdata(G2,'v');
[A2,B2,C2,D2] = tf2ss(n2,d2)