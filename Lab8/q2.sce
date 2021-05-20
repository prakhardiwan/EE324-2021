clear();
s = poly(0,'s');
K2 = [0.5, 0.25, 0.1, 0.05, 0.01, 0.005];
K1 = K2.*5;
t1 = 0:0.01:200;
t2 = 0:0.001:50;
y1 = zeros(length(t1), length(K2));
y2 = zeros(length(t2), length(K2));

for  i = 1: length (K2)
    sys = syslin('c', (s+K1(i)), (s+K2(i)));
    y1(:, i) = csim('step', t1, sys);
    y2(:, i) = csim('impulse', t2, sys);
end

scf();
xgrid();
plot(t1, y1, 1:length(K2));
xtitle("step responses as K1 and K2 move wrt origin", "time (in sec)", "step responses");
legend(["K2 = 0.5", "K2 = 0.25", "K2 = 0.1", "K2 = 0.05", "K2 = 0.01", "K2 = 0.005"])

scf();
xgrid();
plot(t2, y2, 1:length(K2));
xtitle("impulse responses as K1 and K2 move wrt origin", "time (in sec)", "step responses");
legend(["K2 = 0.5", "K2 = 0.25", "K2 = 0.1", "K2 = 0.05", "K2 = 0.01", "K2 = 0.005"])
