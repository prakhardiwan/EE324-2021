clear;
clc;
s=poly(0,'s');
G = syslin('c',1 / (s*(s^2 + 3*s +5)));
evans(G);

k_max = 15; 
t=0:0.01:15;
kp = 0.1:0.1:k_max;
//kp=3.7:0.001:3.8;
for k1=kp
    G1 = (k1/(k1+s*(s^2 + 3*s +5)));
    G = syslin('c',G1);
    G_rep = csim('step',t,G);
    if(max(G_rep)>=0.9) then
        tr = t(find(G_rep > 0.9)(1))-t(find(G_rep > 0.1)(1));
        printf("k=%.3f , rise_time = %.3f\n",k1,tr);
    end;
end;
