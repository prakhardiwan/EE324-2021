clear;
clc;
s=poly(0,'s');
z = 0.01;
G = 1/((s+3)*(s+4)*(s+12));
C = (s+z)/s;

H = C*G;
sysH = syslin('c',H);

theta=[1.57:0.01:3*1.57];
a = 9; // a represents omega_n
fig=scf();
evans(sysH, 2000);
x=cos(theta)*a;
y=sin(theta)*a;
plot(x, y, 'k--');


k = 1329;

t=0:0.01:15;
sysT = syslin('c',k*H/(1+k*H));
step_r = csim('step',t,sysT);
fig=scf();
plot(t,step_r);
xtitle ('Unit step response for undamped natural frequency = 9 rad/s',"time instants (s)" , "unit step response" );

