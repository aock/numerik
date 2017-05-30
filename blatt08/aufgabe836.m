A = [1, 3, 0, 0;
    3, -6, 1, 0;
    0, 1, 3, 1;
    0, 0, 1, 2];
A
disp('Eigenwerte von A:')
eig(A)

%f(x)=(-77 + 103 x - 36 x^2 + x^4)/( (-3 + x)*(-2 + x)*(-1 + x)*(8 + x))
c = [1,0,-36,103,-77];
disp('Nullstellen von p')
roots(c)
