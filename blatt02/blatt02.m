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
