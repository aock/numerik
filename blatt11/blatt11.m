%% Aufgabe 11.54

a = 0;
b = 5;
n = 10;
f_j = inline('2*x','x');


f = [];
x = [];

h = (b-a)/(2*n);

for j = 0:2*n
    x_j = a+j*h;
    x = [x, x_j];
    f = [f,f_j(x_j)];
end

Sn = SimpsonQuad(x,f,n);

disp(Sn);
