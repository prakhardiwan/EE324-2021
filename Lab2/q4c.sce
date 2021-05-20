s = poly(0,'s');

G = (2*s^2)/(s+1);
t = [0:0.01:20];

y = csim('step',t,G);
plot(t,y)
