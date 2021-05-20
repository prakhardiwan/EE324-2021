clear;
clc;

% Case i
A = [1, 0, 0; 0, 1, 4; 0, 0, 6];
B = [1; 3; 5];
C = [1, 2, 3];
D = 0;

[n1,d1] = ss2tf(A,B,C,D);

poles_1 = roots(d1);
zeros_1 = roots(n1);


% Case ii
A = [1, 5, 0; 0, 6, 0; 0, 0, 6];
B = [1; 3; 5];
C = [1, 2, 3];
D = 0;

[n2,d2] = ss2tf(A,B,C,D);

poles_2 = roots(d2);
zeros_2 = roots(n2);

% Case iii
A = [2, 5, 0; 0, 3, 0; 0, 0, 2];
B = [1; 3; 5];
C = [1, 2, 3];
D = 0;

[n3,d3] = ss2tf(A,B,C,D);

poles_3 = roots(d3);
zeros_3 = roots(n3);