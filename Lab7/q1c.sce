clear;
clc;
s=poly(0,'s');

G = 1/((s+3)*(s+4)*(s+12));

fig=scf();

for z = 5:10:105
    C = (s+z)/s;
    H = C*G;
    sysH = syslin('c',H);
    evans(sysH, 1000);
end
xtitle ('Root Locus plots for z between 5 and 105');




