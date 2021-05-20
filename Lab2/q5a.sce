s = poly(0,'s');
t = [0:0.1:10];


G = (s+5)/[(s+4)*(s+2)];
G = syslin('c',G);
G1 = (s+5)/(s+4);
G1 = syslin('c',G1);
G2 = (1)/(s+2);
G2 = syslin('c',G2);

subplot(131);
plot(t, csim('step', t, G));
xlabel('time');
ylabel('unit step response');
xtitle("passed directly");

subplot(132);
plot(t, csim(csim('step', t, G1), t, G2));
xlabel('time');
ylabel('unit step response');
xtitle("passed through G1 then G2");

subplot(133);
plot(t, csim(csim('step', t, G2), t, G1));
xlabel('time');
ylabel('unit step response');
xtitle("passed through G2 then G1");

