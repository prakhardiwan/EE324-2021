clear;
clc;
s=poly(0,'s');
wn = 1:2:9;
t=0:0.001:12;
zeta = 0.5;
ss=1;
y1=[];
for idx=1:length(wn)
    sys = syslin('c',wn(idx)^2/(s^2+2*zeta*wn(idx)*s+wn(idx)^2));
    y = csim('step',t,sys);
    y1=[y1;y];
    t10 = t(find(y>0.1*ss)(1));
    t90 = t(find(y>0.9*ss)(1));
    tr = t90-t10;
 
    ov = (max(y)-ss)*100/ss;
    tp = t(find(y==max(y)));
    td = t(find(y>0.5*ss)(1));
    ts = 4/(wn(idx)*zeta);
    printf("Natural Freq = %f\n",wn(idx));
    printf("Rise time = %.3f\n",tr)
    printf("Settling time = %.3f\n",ts)
    printf("Peak time = %.3f\n",tp)
    printf("Delay time = %.3f\n",td)
    printf("percent overshoot = %3.3f\n\n",ov)

   
end;

plot(t',y1');
title('Variation of step response with Natural Frequency');
leg = ('omega_n = ') + string(wn');
h2 = legend(leg,pos="in_lower_right");
