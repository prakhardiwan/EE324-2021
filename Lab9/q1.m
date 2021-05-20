clear;
close all;
clc;

syms s;
s=tf('s');
G = 10/(s*(s/5 +1)*(s/20 + 1));

clag = (s+3)/(s+1);
clead = (s+1)/(s+3);

figure;nyquist(G);
[Gm,Pm,~,~] = margin(G);
fprintf("GM = %2.3fdeg \n", 20*log10(Gm));
fprintf("PM = %2.3fdeg \n", Pm);

figure;nyquist(G*clag);
[Gm,Pm,~,~] = margin(G*clag);
fprintf("GM for Lag compensated system = %2.3fdB \n", 20*log10(Gm));
fprintf("PM for Lag compensated system = %2.3fdeg \n", Pm);
figure;nyquist(G*clead);
[Gm,Pm,~,~] = margin(G*clead);
fprintf("GM for Lead compensated system = %2.3fdB \n", 20*log10(Gm));
fprintf("PM for Lead compensated system = %2.3fdeg \n", Pm);
