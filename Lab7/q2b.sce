clear;
clc;
s=poly(0,'s');
z = 0.01;
G = 1/((s+1)*(s+2));
sysG = syslin('c',G);
pi = 3.1415;
//from  10 % OS we get k = 4.44
k = 4.44;
t=0:0.01:15;
sysT = syslin('c',k*G/(1+k*G));
step_r = csim('step',t,sysT);
fig=scf();
plot(t,step_r);
xtitle ('Unit step response for K = 4.44, which leads to 10% OS',"time instants (s)" , "unit step response" );

C = (s+2)/(s+0.1);
H = C*G;
sysT_2 = syslin('c',k*H/(1+k*H));
step_r_2 = csim('step',t,sysT_2);
fig=scf();
plot(t,step_r_2);
xtitle ('Unit step response for system with lag compensator',"time instants (s)" , "unit step response" );
