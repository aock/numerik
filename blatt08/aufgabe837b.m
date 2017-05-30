kmax = 16;
x0 = 1;
v = 3;
a = 3375;
X = heron(v,a,kmax,x0);

xhat = a^(1/3);
d = abs(X-xhat);
length(d);

y = d(3:kmax+1);
x = d(2:kmax);

[C,p] = leastSquares(log(x),log(y));
fprintf('Konvergenzordnung p=%1.4f, Konstante C=%2.4f\n',p,C)

loglog(1:kmax-1,y,'rx',1:kmax-1,C*x.^p,'b-')

