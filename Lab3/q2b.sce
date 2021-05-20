clear;
clc;

s=poly(0,'s');

sys1 = syslin('c',(s+0.01)/(s^3+101/50*s^2+126/25*s+0.1));
figure;plzr(sys1);
f = gcf()
f.background = 8;
title('pz plot of third order system');

disp('poles of sys1 are\n');
disp(roots(sys1.den));
disp('zeros of sys1 are\n');
disp(roots(sys1.num));

t=0:0.1:100;
y1 = csim('step',t,sys1);

sys2 = syslin('c',0.5/(s^2+2*s+5));
y2 = csim('step',t,sys2);

sys3 = syslin('c',1/(s^2+2*s+5));
y3 = csim('step',t,sys3);

figure;plot(t,y1,t,y2,t,y3);
f = gcf()
f.background = 8;
h=legend(['original system';'second order approx maintaing steady state value';'another second order approx'])
