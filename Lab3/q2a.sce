clear;
clc;

s=poly(0,'s');

sys1 = syslin('c',1/(s^2+4*s+1));

t=0:0.1:20;
y1 = csim('step',t,sys1);

figure;plot(t,y1);


//dominant pole approximation
/*This approximation assumes that the slowest part of the system dominates the response, and that the faster part(s) of the system can be ignored. This is demonstrated below for two cases*/
    
/* Reference: https://lpsa.swarthmore.edu/PZXferStepBode/DomPole.html */




