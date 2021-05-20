// Overlapping figures with different colors
s = poly(0,'s');
t = [0:0.01:16];
colours = ['r' 'g' 'b' 'c' 'm' 'y' 'k' 'r' 'g'];

for i=0:8
    P = 1/(s^2 + s*i*2*0.25 + 1);
    P = syslin('c',P);
    plot(t, csim('step', t, P), colours(i+1));
end

xtitle ("Variation of Unit Step Response with Damping Ratio", "time" , "unit step response" );
