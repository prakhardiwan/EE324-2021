s = poly(0, 's');
G = 10/(s*(s+2)*(s+4));
G = syslin('c',G);
// evans finds root-locii of 1+K*G(s)
evans(G, 100);  // constructing root locus 
sgrid('red');  
// obtained the point by zooming in near the cut of imaginary axis, we get critical K = 4.7999 
