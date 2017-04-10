n = 9;
V = diag(ones(n-1,1),1);
A = 2*eye(n)-V-V';


B = diag(diag(linspace(1,n,n)'*linspace(1,n,n)));

b = ones(n,1);

disp(b);

disp(A+2*B);

disp(sum(sum(A)));

disp(inv(A));

y = inv(A)*b;

disp(y);

x = linspace(1,n,n);

plot(x,y);


