s = poly(0, 's');
S_1 = 1/(s^2);
S_2 = (50*s)/(s^2+s+100);
S_3 = s-2;
G = S_1*S_2*S_3;// combination of 3 blocks
T = G/(1+G); // Upon solving 
