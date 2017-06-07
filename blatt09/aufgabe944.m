%% Aufgabe 9.44

x0 = 10*rand(5,1)-5;
p_coeff=[-5 -3 9 8 -3];

y0=polyval(p_coeff,x0); 

x = linspace(-5,5)';
y = polyval(p_coeff,x);

dbtype newtonIntpol.m
p = newtonIntpol(x0,y0,x);
plot(x0,y0,'o',x,p)

display('||p(x_eval)-y_{exakt}||_{oo}')
max(abs(y-p))
