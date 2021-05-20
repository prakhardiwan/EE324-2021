s = poly(0,'s');
//repeated poles
G = 1/(s^2 + 2*s +1);

sys = syslin('c',G);
t = [0:0.01:20];

plot(t,csim('step', t, G), 'r');

var = gca();
var.data_bounds = [0,0; 20,1.2];
xtitle ("Unit Step Response for both the systems", "time" , "unit step response" );
legend ("Second Order Response with repeated roots");

