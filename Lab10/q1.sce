clear;
clc;

s=poly(0,'s');
A = [1,2,5;
     1,3,4;
     6,1,2];
I = eye(3,3);
B = [1;
     2;
     1];
C = [1,1,3];
D = 0*eye(1,1); 
T = [1,0,0;
     1,2,4;
     3,0,2];

G1 = D + C*(inv(s*I-A))*B;
evals1 = spec(A);

// Checking G(s) after modifying A, B and C
A = inv(T)*A*T;
B = inv(T)*B;
C = C*T;

G2 = D + C*(inv(s*I-A))*B;
     
// Eigenvalues of A
evals2 = spec(A);
poles_G = roots(G1.den); 

// D value
G_bp = ((s+1)*(s+5))/((s+3)*(s+2));
G_sp = (s+1)/((s+3)*(s+2));

sysGbp = syslin('c',G_bp);
sysGsp = syslin('c',G_sp);

[A1,B1,C1,D1] = abcd(sysGbp);
[A2,B2,C2,D2] = abcd(sysGsp);
