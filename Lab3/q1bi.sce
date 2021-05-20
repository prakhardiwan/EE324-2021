clear;
s = poly(0,'s');
sys1 = syslin('c', 1/(s^2 - s - 6));
t = 0 : 0.01 : 3;
y = csim('step', t, sys1);
figure;plot(t', y);
xlabel("t (s)")
ylabel("Step response, y(t)")
title("Step Response for unstable system");
f = gcf()
f.background = 8;

sys2 = syslin('c', (s-3)/(s^2 - s - 6));
y2 = csim('step', t, sys2);
figure;plot(t,y2);
xlabel("t (s)")
ylabel("Step response, y(t)")
title("Step Response for stabilised system"); 
f = gcf()
f.background = 8

a = -0.003 : 0.001 : 0.003;
y = zeros(length(t),length(a))
figure;
i=1;
for a1 = a
    sys = syslin('c', (s - 3 + a1)/(s^2 - s - 6));
    y(:,i) = csim('step', t, sys);
    i=i+1;
end
plot(t, y)
h1=legend(string(a),4);
xlabel("t (s)")
ylabel("Step response, y(t)")
title("Step Response for a = -0.003 to 0.003"); 
f = gcf()
f.background = 8
