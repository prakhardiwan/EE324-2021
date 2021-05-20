s = poly(0, 's');
G = s^6 + 2*s^5 + 4*s^4 + 6*s^3 +(15/2)*s^2 + 9*s^1 + 4 ;  
[r,num] = routh_t(G); // r is the routh table 
disp(r);          // num is the number of sign changes

 
