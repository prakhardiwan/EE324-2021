// Multiple plots in single figure
s = poly(0,'s');
t = [0:0.01:15];

for i = 0:8
    num_subplot = 331+i;
    subplot(num_subplot);
    P = 1/(s^2 + s*i*2*0.25 + 1);
    sys = syslin('c',P);
    plot(t,csim('step', t, P));
    x = string(i*0.25);
    xtitle('damping ratio = '+ x);
    xlabel('time');
    ylabel('unit step response');
end

