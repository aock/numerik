%% Aufgabe 4.19

dbtype myCholesky.m

A = [4,-2,0;-2,5,-2;0,-2,3];
R = myCholesky(A);
R2 = chol(A);

disp('A = ');
disp(A);

disp('Linke untere Dreiecksmatrix der eigenen Cholesky-Zerlegung:');
disp(R);

disp('chol Funktion von Matlab:');
disp(R2);

%% Aufgabe 4.21
% a)
% A*x = b

dbtype JacobiVerfahren.m

n = 10;
alpha = 0.5;
kmax = 100;

A = diag(ones(n-1,1)*alpha,1) + diag(ones(n-1,1)*alpha,-1) + diag(ones(n,1));
b = linspace(1,n,n)';
x0 = zeros(n,1);

rel_errors = [];
real_x = inv(A)*b;



for k=1:kmax
	x = JacobiVerfahren(A, b, x0, k);
	x_error = norm(real_x - x)/norm(real_x);
	rel_errors = [rel_errors; x_error];
end


plot(linspace(1,kmax,kmax), rel_errors);
title('alpha = 0.5')
xlabel('Iterationen')
ylabel('Relativer Fehler')

%b)
% neues alpha sonst das gleiche
alpha = 0.25;
A = diag(ones(n-1,1)*alpha,1) + diag(ones(n-1,1)*alpha,-1) + diag(ones(n,1));

rel_errors = [];

for k=1:kmax
	x = JacobiVerfahren(A, b, x0, k);
	x_error = norm(real_x - x)/norm(real_x);
	rel_errors = [rel_errors; x_error];
end

plot(linspace(1,kmax,kmax), rel_errors);
title('alpha = 0.25')
xlabel('Iterationen')
ylabel('Relativer Fehler')
