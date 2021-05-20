clear;
clc;
s=poly(0,'s');

G = 1/((s+3)*(s+4)*(s+12));
sysG = syslin('c',G);

fig=scf();
evans(sysG);

k = ((144*511)/489);

t=0:0.01:10;
sysT = syslin('c',k*G/(1+k*G));
step = csim('step',t,sysT);
fig=scf();
plot(t,step);
xtitle ('Unit step response for steady state error = 0.489',"time instants (s)" , "unit step response" );
