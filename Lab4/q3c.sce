s = poly(0, 's');
G = s^5 - 2*s^4 + 3*s^3 - 6*s^2 + 2*s - 4; 
[r,num] = routh_t(G); // r is the routh table 
disp(r);          // num is the number of sign changes
