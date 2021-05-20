s = poly(0, 's');
G = 10/(s*(s+2)*(s+4));
K = 4.9;
Tf = (K*G)/(1+K*G);
[r,num] = routh_t(Tf.den); // r is the routh table 
disp(num);          // num is the number of sign changes
//Therefore, on 4.79999 we get 0 poles in ORHP but @4.8 we get 2 of them which leads to unstability, confirming part c
