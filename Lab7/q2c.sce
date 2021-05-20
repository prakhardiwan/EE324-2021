clear;
clc;
s=poly(0,'s');
z = 0.01;
G = 1/((s+1)*(s+2));
sysG = syslin('c',G);
pi = 3.1415;
//from  10 % OS we get k = 4.44
k = 4.44;
t=0:0.01:15;
fig=scf();
z = 0.1 : 1 : 4.1;
y = zeros(length(t),length(z));
i=1;
for z1 = z
    p = z1/20;
    C = (s+z1)/(s+p);
    H = C*G;
    sysT = syslin('c',k*H/(1+k*H));
    y(:,i) = csim('step', t, sysT);
    i=i+1;
end
plot(t, y);
h1=legend(string(z),5);
xlabel("t (s)")
ylabel("Step response, y(t)")
title("Step Response for zero = 0.1 to 4.1"); 
f = gcf();
f.background = 8;
