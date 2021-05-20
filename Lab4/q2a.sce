s = poly(0, 's');
G = 10/(s*(s+2)*(s+4));
K = 5; //Proportionality gain
C_tf = (G*K)/(1+(G*K));   // Closed loop transfer function
C_tf = syslin('c',C_tf);
disp(C_tf);
