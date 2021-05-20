s = poly(0,'s');
//nat_freq = 1, and damping ratio = 0.5
P= 1/(s^2 - s + 1);
sys = syslin('c',P);

t =[0:0.01:0.2];
y = csim('step', t, sys);

plot(t,y);
xtitle ("Step response of system (s)", "time (t)" , "y(t)" );
