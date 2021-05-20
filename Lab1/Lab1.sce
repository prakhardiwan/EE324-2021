// Author: Prakhar Diwan (180100083)
// Assignment for LAB-3 of EE 324 

// Question 1
s = poly(0,'s'); //Defining symbol variable 's'
G1 = 10/(s^2 + 2*s + 10);
G2 = 5/(s+5);

// (a) Cascade System 
//Here as per the convolution(in time domain) theorem, the overall transfer function (L) will be the product of the transfer functions of the 2 systems G1 and G2 

L = G1*G2; //Transfer function of cascade system 
disp("Transfer function of Cascade System", L);

// (b) Parallel System 
//Here as per the superposition theorem, the overall transfer function (P) will be the sum of the transfer functions of the 2 systems G1 and G2 

P = G1+G2; //Transfer function of parallel system
disp("Transfer function of Parallel System", P);

// (c) Feedback(closed loop) System 
// Here using the,superposition theorem i.e. let g(t) and f(t) be 2 impulse responses with transfer functions G(s) and F(s), then (a*g(t)+b*f(t)) has a transfer function (a*G(s)+b*F(s)), where a and b are constants.
//Let R(s) be the input (in Laplace domain) and C(s) be the output(in Laplace domain) of the overall system, which has transfer function let's say T(s)
//Solving we get:
// (R(s)-(G2(s)*C(s)))*G1(s)=C(s), which simplifies to 
// (C(s)/R(s))={G1(s)}/{1+(G1(s)*G2(s))}

num = G1;     //num = G1(s)
den = 1 + L; // den = 1+G1(s)*G2(s) 
T = num/den; //Transfer function of Feedback(closed loop) System
disp("Transfer function of Feedback(closed loop) System", T);

// (d) Response to the unit step to the system with transfer function G1(s).
sys_G1 = syslin('c',G1);
t = linspace(0,10,1000);
y = csim('step',t,sys_G1); //output of system with transfer function G1(s) on input of unit step
plot(t,y); //plotting y(t)
title('Unit step response (in time domain) of system with transfer function G1(s)')
xlabel('Time (t)', 'fontsize',2)
ylabel('Response y(t)','fontsize',2);




// Question 2
// Poles and Zeros of the overall system in each of cases a,b,c of question 1
//Using roots on denominator and numerator of transfer function  for finding poles and zeros respectively. 
// 1 (a)
sys_L = syslin('c',L);
zeros_L = roots(sys_L.num);
poles_L = roots(sys_L.den);
disp("Zeros of Transfer Function", zeros_L);
disp("Poles of Transfer Function", poles_L);

// 1 (b)
sys_P = syslin('c',P);
zeros_P = roots(sys_P.num);
poles_P = roots(sys_P.den);
disp("Zeros of Transfer Function", zeros_P);
disp("Poles of Transfer Function", poles_P);

// 1 (c)
sys_T = syslin('c',T)
zeros_T = roots(sys_T.num);
poles_T = roots(sys_T.den);
disp("Zeros of Transfer Function", zeros_T);
disp("Poles of Transfer Function", poles_T);




// Computations on matrices: such as addition, multiplication,
// determinant and inverse calculation 
M1 = [G1 P; L G2];
disp("M1", M1);
M2 = [T s; (1+s) G2];
disp("M2", M2);
M_add = M1 + M2;
disp("Addition of M1 and M2", M_add);
M_prod = M1*M2;
disp("Product of M1 and M2", M_prod);
M1_det = det(M1);
disp("Determinant of M1", M1_det);
M1_inv = inv(M1);
disp("Inverse of M1", M1_inv);


// Question 3
//Obtaining Z(s)I(s)=V(s) is shown in report 
Z = [2+2*s+1/(1+s) -1/(1+s) -(1+s); -1/(1+s) 3+s+1/(s+1) -2; -1-s -2 6+s+1/(1+s)];
disp("Z(s)", Z);

Z_inv = inv(Z); // I(s) = Z_inv(s)*V(s)
disp("Z_inv(s)", Z_inv);

// Third column has required values result in the required quantity as depicted in report
I_1byV_1=Z_inv(1, 3);
disp("I_1/V_1", I_1byV_1)

I_2byV_1=Z_inv(2, 3)
disp("I_2/V_1", I_2byV_1)

I_3byV_1=Z_inv(3, 3)
disp("I_3/V_1", I_3byV_1)
//End

