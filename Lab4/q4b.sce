s = poly(0, 's');
G = s^8 + s^7 + 7*s^6 + 6*s^5 + 17*s^4 + 13*s^3 + 19*s^2 + 12*s + 4 ; 
[r,num] = routh_t(G); // r is the routh table 
disp(r);          // num is the number of sign changes
