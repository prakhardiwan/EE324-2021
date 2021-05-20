a = 83;
b = 16;

s = poly(0,'s');

t_rise_array = [];
for x = b:b:100*b
    G = a/(s+x);
    sys = syslin('c', G);
    t_rise = log(9)/x;    
    t_rise_array($+1) = t_rise;
end

plot(b:b:100*b, t_rise_array);

xtitle ("Variation of Rise Time with the parameter b", "b" , "rise time" );

