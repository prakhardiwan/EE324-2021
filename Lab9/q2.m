clear;
close all;
clc;

syms s;
s=tf('s');

omega_z = 2*pi*50;
q = 0.05;
G1 = (s^2 + omega_z^2)/(s^2 + omega_z*s/q + omega_z^2);
figure;bode(G1);title('Q=0.05');

q=0.1;
G2 = (s^2 + omega_z^2)/(s^2 + omega_z*s/q + omega_z^2);

figure;bode(G2);title('Q=0.1');

q=0.5;
G3 = (s^2 + omega_z^2)/(s^2 + omega_z*s/q + omega_z^2);

figure;bode(G3);title('Q=0.5');
