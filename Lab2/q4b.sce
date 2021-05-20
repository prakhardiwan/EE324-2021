z = poly(0,'z');

G = 1/z;
G = syslin('d',G);
G = tf2ss(G);

ts = 1;
t = [0:ts:20];

u = ones(1,length(t));

ds = dsimul(G,u);

plot(t, ds, 'o');

var = gca();
var.data_bounds = [0,0; 20,1.2];
xtitle ('',"time instants" , "unit step response" );
