s = poly(0,'s');

G = (s+5)/[(s+4)*(s+2)];
G = syslin('c',G);
G1 = (s+5)/(s+4);
G1 = syslin('c',G1);
G2 = (1)/(s+2);
G2 = syslin('c',G2);


subplot(131)
t = [0:0.1:10];
plot(t, csim('step', t, G));
xlabel('time');
ylabel('unit step response');

subplot(132)
t = [0:0.5:10];
plot(t, csim('step', t, G));
xlabel('time');
ylabel('unit step response');

subplot(133);
t = 0:2:10;
plot(t, csim('step', t, G));
xlabel('time');
ylabel('unit step response');

// ---------------------------------------

subplot(131);
t = [0:0.1:10];
plot(t, csim(csim('step', t, G1), t, G2), 'k');
xlabel('time');
ylabel('unit step response');

subplot(132);
t = [0:0.5:10];
plot(t, csim(csim('step', t, G1), t, G2), 'k');
xlabel('time');
ylabel('unit step response');

subplot(133);
t = [0:2:10];
plot(t, csim(csim('step', t, G1), t, G2), 'k');
xlabel('time');
ylabel('unit step response');

// --------------------------------------

subplot(131);
t = [0:0.1:10];
plot(t, csim(csim('step', t, G2), t, G1), 'r');
xlabel('time');
ylabel('unit step response');
xtitle("Sampling period = 0.1");
legend ("passed directly" , "passed through G1 then G2", "passed through G2 then G1");

subplot(132);
t = [0:0.5:10];
plot(t, csim(csim('step', t, G2), t, G1), 'r');
xlabel('time');
ylabel('unit step response');
xtitle("Sampling period = 0.5");
legend ("passed directly" , "passed through G1 then G2", "passed through G2 then G1");

subplot(133);
t = 0:2:10;
plot(t, csim(csim('step', t, G2), t, G1), 'r');
xlabel('time');
ylabel('unit step response');
xtitle("Sampling period = 2");
legend ("passed directly" , "passed through G1 then G2", "passed through G2 then G1");

