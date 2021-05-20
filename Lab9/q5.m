clear;
close all;
clc;

syms s;
s=tf('s');

G = (10*s+2000)/(s^3+202*s^2+490*s+18001);
%figure;margin(G);

k=81.0045;
%figure;margin(k*G);
figure;margin(k*G*(s+1));