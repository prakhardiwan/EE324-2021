clear;
clc;
s=poly(0,'s');

G = 1/((s+3)*(s+4)*(s+12));
sysG = syslin('c',G);

rho=0.35;          // Damping ratio reqd
theta=atan(sqrt(1-rho^2)/rho);   // Angle made for given rho
a=[0:0.01:10];
fig=scf();
evans(G, 500);
x=-cos(theta)*a;
y=sin(theta)*a;
plot(x, y, 'k--');
sgrid();
k_list=0.1:0.01:500;
eps=10^(-6);
D = G.den;
for k=k_list
    char_poly = D+k;
    poles=roots(char_poly);
    p_y=imag(poles(2));
    p_x=-1*real(poles(2));
    if p_x<=0 then
        break
    end
    theta_cur=atan(p_y/p_x);
    if abs(theta_cur-theta)<eps then
        printf("Required Gain = %2.3f \n", k); 
        printf("Poles are: ");
        disp(poles);
        printf('Obtained damping factor = %2.3f\n', cos(theta_cur));
    end   
end

k = 371.88;
t=0:0.01:10;
sysT = syslin('c',k*G/(1+k*G));
step = csim('step',t,sysT);
fig=scf();
plot(t,step);
xtitle ('Unit step response for damping ratio = 0.35',"time instants (s)" , "unit step response" );
