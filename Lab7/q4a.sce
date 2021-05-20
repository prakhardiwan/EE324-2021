clc;
clear;
s=poly(0, 's')

G = 6/(s^3 + 6*s^2+11*s+6);
G_sys = syslin('c', G);

w_list=[0.1,1,2.5 ,7.5, 15];
phases=zeros(w_list);
mags=zeros(w_list);
i=1; 
for w=w_list
    t=0:2*%pi/(w*100):10*%pi/w;
    x=sin(w*t);
    y=csim(x, t, G_sys);
    ty=t(find(abs(y-max(y))<0.00000001)(1));
    tx=t(find(abs(x-max(x))<0.00000001)(1));
    phases(i)=(ty-tx)*w*180.0/%pi; // degrees
    mags(i)=max(y);
    fig=scf(i);
    plot(t, x, 'r');
    plot(t, y, 'b');
    hl=legend(['Input', 'Output'], [4]);
    xtitle(['Response to sine input', '$w_n=$', string(w)], 't(s)', 'Response');
    i=i+1; 
end
fig=scf(7);
plot('ln', w_list, phases);
xtitle('Phase variation with w', 'w', 'Phase (in degrees)');
fig=scf(8);
plot('ln', w_list, mags);
xtitle('Magnitude variation with w', 'w', 'Magnitude');
