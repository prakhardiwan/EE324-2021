s = poly(0, 's');
G = s^6 + s^5 - 6*s^4 + s^2 + s - 6; 
[r,num] = routh_t(G); // r is the routh table 
disp(r);          // num is the number of sign changes
