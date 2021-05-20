clear;
clc;
s=poly(0,'s');

G1 = (25/((s+50)*(s^2+s+0.5)));
G2 = 0.5/(s^2+s+0.5);

sysG1 = syslin('c',G1);
sysG2 = syslin('c',G2);

fig=scf();
evans(sysG1);
fig=scf();
evans(sysG2);

k = 1:20:101;
t=0:0.01:10;
for k1=k
    sysG1 = syslin('c',k1*G1/(1+k1*G1));
    sysG2 = syslin('c',k1*G2/(1+k1*G2));
    step1 = csim('step',t,sysG1);
    step2 = csim('step',t,sysG2);
    fig=scf();
    plot(t,step1,t,step2);
    title('k='+string(k1));
    h2=legend(['third order','second order'])
end;
