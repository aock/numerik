n = 100;
A = diag(-ones(n-1,1),1) + diag(-ones(n-1,1),-1) + 2 * diag(ones(n,1));
I = diag(ones(n,1));

A_ = A/2;

P = 0;

b_list = [];

for k = 0:15
    P = P + (I - A_)^k;
    
    b = cond(P*A);
    b_list = [b_list;b];
end

a = cond(A);
disp('Konditionszahl von A:')
disp(a)

disp('Konditionszahlen von P*A:')
disp(b_list)

