n = 5;

% Interpolationspolynom mit Chebyshev bestimmen
j = 0:n;
x = cos((2*j+1)*pi/(2*(n+1)))';
f = exp(-x.^2);
[J,X] = meshgrid(j,x);
V = X.^J;
p = V\f;

% Interpolationspolynom auf feinem Gitter auswerten
xx = (-1:0.01:1)';
ff = exp(-xx.^2);
[J,XX] = meshgrid(j,xx);
VV = XX.^J;
pp = VV*p;

% Plot mit Fehler
plot(xx,ff,xx,pp)
legend('Funktion','Interpolation')

[y0,ix] = max(abs(ff-pp));
x0 = xx(ix);

x1 = roots([128,0,-1344,0,3360,0,-1680,0]);
x1 = x1(abs(x1)<=1);
x1 = [x1;-1;1];
fnmax = max(abs((64*x1.^6-480*x1.^4+720*x1.^2-120).*exp(-x1.^2)));
res = fnmax/2^n/prod(1:(n+1));
fprintf('Maximaler Fehler:\n|(f-p%d)(%1.2f)| = %1.2e <= %1.2e\n',n,x0,y0,res);
