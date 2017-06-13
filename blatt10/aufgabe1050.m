
x0 = 1;
j = (0:1:60)';
h = 2.^(-j);
yprime = (exp(x0+h) - exp(x0))./h;

err = abs(yprime-exp(x0));

semilogy(j,err);

[errmin,I] = min(err);

fprintf('h=%e=2^(-%d) fuer den kleinsten Fehler.\n',h(I),j(I));
