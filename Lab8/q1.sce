clc();
clear();
s = poly(0,'s');

G = 1/(s*(s^2 + 4*s + 8));
sys = syslin('c', G);
K = 0.01:0.01:100;

phm = zeros(length(K), 1);
gm = zeros(length(K), 1);
frp = zeros(length(K), 1);
frg = zeros(length(K), 1);

i = 1;
for  k = K
    sys1 = (k*sys);
    [phm(i),frp(i)] = p_margin(sys1);
    [gm(i), frg(i)] = g_margin(sys1);
    i = i + 1;
end

scf();
plot(K,phm,'b');
plot(K,gm,'r');
xtitle("phase and gain margin variations with proportional gain","proportional gain (K)", "phase and gain margins");
xgrid();
legend(["phase margin", "gain margin"]);

// Verifying that system is marginally stable
K = 32; 
sysC = (K*sys);
charC = 1 + sysC;
poles = roots(charC.num);
disp(poles);
show_margins(sysC);
// bode(sysC);
