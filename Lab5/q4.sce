clear;
clc;
s=poly(0,'s');
G = ((0.11*(s+0.6))/(6*s^2 + 3.6127*s + 0.0572));
G = syslin('c', G);
evans(G,100);

t=0:0.01:20;
kp = 85.8;
G1 = (kp*G/(1+kp*G));
H = syslin('c',G1);
H_rep = csim('step',t,H);
plot(t,H_rep);
var = gca();
var.data_bounds = [0,0; 20,1.2];
xtitle ('Unit step response for kp = 85.8',"time instants" , "unit step response" );

