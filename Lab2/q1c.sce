clear;
clc;
s = poly(0,'s');
t=0:0.001:10;
ss=2/15;
for k = 0.1:0.1:8
    T = (k*(s^2+2*s+5))/((s+3)*(s+4)*(s^2+2*s+5) + k*(s^2-4*s+8));
    sys = syslin('c', G);
    y = csim('step',t,sys);
    ov = (max(y)-ss)/ss;
    plot(t,y);
    if(ov >= 0.3) then 
        printf("k for 30% overshoot = %3.3f\n\n",k);
end

