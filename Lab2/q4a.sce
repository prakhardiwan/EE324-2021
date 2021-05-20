s = poly(0,'s');

G = 1/s;
sys = syslin('c',G);

t = [0:0.1:100];
y = csim('step', t, G);

plot(t,y);

xtitle ("Unit Step Response of system with Transfer Function G(s)", "time" , "unit step response" );

