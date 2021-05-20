a = 83;
b = 16;

s = poly(0,'s');

G = a/(s+b);

sys = syslin('c', G);

t_const = 1/b;

t_st2 = log(50)/b;

t_rise = log(9)/b;

t_rise_st = log(10/9)/b;
t_rise_end = log(10)/b;

t = linspace(0, 1, 1000);

y1 = linspace(0, 6, 100);
x1 = t_rise_st*ones(y1);
x2 = t_rise_end*ones(y1);
x3 = t_const*ones(y1);
x4 = t_st2*ones(y1);

xpts = [t_const, t_st2, t_rise_st, t_rise_end];

y_at_t_const = 5.188*((%e)-1)/(%e);
ypts = [y_at_t_const, 0.98*5.188, 0.1*5.188, 0.9*5.188];
ypts2 = [0,0,0,0]

labels = ['time constant','2% settling time','start of rise','end of rise'];

plot(t, csim('step', t, G), 'k-');

plot(x1, y1, 'b--');
plot(x2, y1, 'b--');
plot(x3, y1, 'b--');
plot(x4, y1, 'b--');

plot(xpts, ypts, 'o');
xstring(xpts, ypts2, labels);

xtitle ("Unit Step Response of system with Transfer Function G(s)", "time" , "unit step response" );
