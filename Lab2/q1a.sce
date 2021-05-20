a = 83;
b = 16;

s = poly(0,'s'); //defining the variable s

G = a/(s+b); // defining the transfer function

sys = syslin('c', G); // making linear continuous time system of tranfer function G(s)
