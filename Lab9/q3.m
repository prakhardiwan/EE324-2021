clear;
close all;
clc;

syms s;
s=tf('s');
C = 100/(s+30);
%figure;margin(C);
%[Gm,Pm,Wcg,Wcp] = margin(C);

G = exp(-0.01965*s);
figure;margin(G*C);
