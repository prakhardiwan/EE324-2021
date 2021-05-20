clear;
clc;
function [t_s]=settling(y, t, yfinal)
t_a = 0;
if (size(find(y>=1.05*yfinal))>0) then
    t_a=t(find(y>=1.05*yfinal)($)); // $ gives the last element 
end
t_b = t(find(y<=0.95*yfinal)($));
t_s=max(t_a, t_b)
endfunction
s=poly(0,'s');

G = 1/((s+3)*(s+4)*(s+12));
sysG = syslin('c',G);
t = 0 : 0.01 : 12;
k = 1: 1 :1000;
y = zeros(length(t),length(k));
figure;
i=1;
for k1 = k
    sys = syslin('c', ((k1*G)/(k1*G+1)));
    y(:,i) = csim('step', t, sys);
    [t_s] = settling(y(:,i), t, k1/(144+k1));
    t_settle(i) = t_s;
    i=i+1;
end
plot(t, y)
//h1=legend(string(k),8);
xlabel("t (s)")
ylabel("Step response, y(t)")
title("Step Response for k = 1 to 997"); 
f = gcf();
f.background = 8;
