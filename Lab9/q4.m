clear;
close all;
clc;

syms s;
s=tf('s');
G= (s+4)/(s+4);

figure(1);nyquist(G);