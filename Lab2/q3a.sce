s = poly(0,'s');

G1 = 1/(s + 1);
G2 = 1/(s^2 + 4*s + 1);

sys1 = syslin('c',G1);
sys2 = syslin('c',G2);

t = [0:0.01:20];

plot(t,csim('step', t, G1), 'r');
plot(t,csim('step', t, G2), 'g');

xtitle ("Unit Step Response for both the systems", "time" , "unit step response" );
legend ("First Order Response" , "Second Order Response");

var = gca();
var.data_bounds = [0,0; 20,1.2];
