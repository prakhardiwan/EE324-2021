s = poly(0, 's');
b = 1;
d = 2;
G = s^4 + s^3 + b*s^2 + 2.5*s + d; 
[r,num] = routh_t(G); // r is the routh table 
disp(r);          // num is the number of sign changes
