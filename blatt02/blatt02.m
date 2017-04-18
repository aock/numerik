%% Aufgabe 7

dbtype somefunc.m

a = rand(5, 10);
b = somefunc(a, 5);

disp(a);
disp(b);

%% Aufgabe 8

dbtype sumx.m;

%generate random vector
size = 10;
a = rand(2^size, 1);

%calculate sum 
y = sumx(a, size);
z = sum(a);

%display result
disp(y);
disp(z);
