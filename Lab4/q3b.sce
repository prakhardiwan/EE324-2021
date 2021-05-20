s = poly(0, 's');
G = s^5 + 6*s^3 + 5*s^2 + 8*s + 20; 
[r,num] = routh_t(G); // r is the routh table 
disp(r);          // num is the number of sign changes
