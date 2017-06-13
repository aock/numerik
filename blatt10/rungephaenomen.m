f = inline('1./(1+25*x.^2)','x');
p = 9;
j = 0:1:p-1;

t = cos((2*j+1)./(2*p)*pi); %Chebyshev-Knoten [-1,1]

a = -1;
b = 1;

%t=1/2*(a+b)-tmp*(b-a)/2;

xj = a + (b-a).*j./(p-1); %aeuqidistante Knoten in [-1,1]

y = linspace(a,b);
fy = f(y);

fxj = f(xj);
ft = f(t);

pxj = newtonIntpol(xj,fxj,y);
pt = newtonIntpol(t,ft,y);

plot(y,fy,y,pxj,'r-',xj,f(xj),'ro',y,pt,'k-',t,f(t),'ko')
legend('f','Aequidistant','Aequidistant','Chebyshev','Chebyshev');


