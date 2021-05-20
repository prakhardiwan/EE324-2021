clear;
clc;
s=poly(0,'s');
z = 0.01;
G = 1/((s+3)*(s+4)*(s+12));
C = (s+z)/s;

H = C*G;
sysH = syslin('c',H);

rho=0.2; // Damping ratio reqd
theta=atan(sqrt(1-rho^2)/rho); //Angle made for given rho
a=[0:0.01:10];
fig=scf();
evans(sysH, 1000);
x=-cos(theta)*a;
y=sin(theta)*a;
plot(x, y, 'k--');


k = 666.3;

t=0:0.01:10;
sysT = syslin('c',k*H/(1+k*H));
step_r = csim('step',t,sysT);
fig=scf();
plot(t,step_r);
xtitle ('Unit step response for damping ratio = 0.2',"time instants (s)" , "unit step response" );
