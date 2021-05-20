s = poly(0,'s');
t = linspace(0, 100 , 1000);

G = (s+0.01)/(s^3 + (101/50)*s^2 + (126/25)*s + 0.1);
sys = syslin('c',G);
plot(t, csim('step', t, sys), 'r');
