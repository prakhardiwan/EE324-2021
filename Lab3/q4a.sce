clear;
clc;
s=poly(0,'s');
wn = 1;
t=0:0.001:100;
zeta = [0;0.5;2];
ss=1;
y1=[];
for idx=1:length(zeta)
    sys = syslin('c',wn^2/(s^2+2*zeta(idx)*wn*s+wn^2));
    y = csim('step',t,sys);
    y1=[y1;y];
    t10 = t(find(y>0.1*ss)(1));
    t90 = t(find(y>0.9*ss)(1));
    tr = t90-t10;
    if zeta(idx)==0 then
        ov = (max(y)-ss)*100/ss;
        tp = t(find(y>=max(y)-1e-5)(1));
        td = t(find(y>0.5*ss)(1));
        tss(idx)=-1;
        printf("Damping factor = %1.3f\n",zeta(idx));
        printf("Rise time = %.3f\n",tr)
        printf("Settling time = undefined\n")
        printf("Peak time = %.3f\n",tp)
        printf("Delay time = %.3f\n",td)
        printf("percent overshoot = %3.3f\n\n",ov)

  elseif zeta(idx)<1 then
        ov = (max(y)-ss)*100/ss;
        tp = t(find(y==max(y)));
        td = t(find(y>0.5*ss)(1));
        ts = 4/(wn*zeta(idx));
        printf("Damping factor = %1.3f\n",zeta(idx));
        printf("Rise time = %.3f\n",tr)
        printf("Settling time = %.3f\n",ts)
        printf("Peak time = %.3f\n",tp)
        printf("Delay time = %.3f\n",td)
        printf("percent overshoot = %3.3f\n\n",ov)

    else
        td = t(find(y>0.5*ss)(1));
        ts = t(find(y>0.98*ss)(1));

        printf("Damping factor = %1.3f\n",zeta(idx));
        printf("Rise time = %3.3f\n",tr);
        printf("Settling time = %.3f\n",ts)
        printf("Peak time = undefined\n");
        printf("Delay time = %3.3f\n",td);
        printf("percent overshoot = undefined\n");
    end;
end;

plot(t',y1');
title('Variation of step response with damping factor');
h2 = legend('Damping factor = ' + string(zeta),pos="in_lower_right");
