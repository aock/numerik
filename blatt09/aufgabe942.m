%% Aufgabe 9.42

x = (0:8)';
y = [1:5,-3:0]';
z = linspace(0,8,1000);

% a)
pot=(0:8)';
n = length(x);
% a)
M1 = zeros(n,n);
% b)
M2 = zeros(n,n);
% c)
M3_1 = zeros(n,n);
M3_2 = zeros(n,n);

e = inline('exp(-sigma*(x-x_k).^2)','x','x_k','sigma');
dbtype func942_b.m

for j=1:n
    % a)
    M1(j,:) = (x(j)).^pot;
    % b)
    M2(j,:) = func942_b(x(j));
    % c)
    M3_1(j,:) = e(x,x(j),1);
    M3_10(j,:) = e(x,x(j),10);
end

% a)
c1 = M1\y;
c1
% b)
c2 = M2\y;
c2
% c)
c3_1 = M3_1\y;
c3_1
c3_10 = M3_10\y;
c3_10

f1 = [];
f2 = [];
f3_1 = [];
f3_10 = [];

for k=1:length(z)
    % a)
    tmp = c1' * ( (z(k)).^pot);
    f1 = [f1;tmp];

    % b)
    tmp = c2' * func942_b(z(k));
    f2 = [f2;tmp];

    % c)
    tmp = c3_1' * e(x,z(k),1);
    f3_1 = [f3_1;tmp];

    tmp = c3_10' * e(x,z(k),10);
    f3_10 = [f3_10;tmp];

end

plot(x,y,'o',z,f1,z,f2,z,f3_1,z,f3_10)
legend('Daten','Monome','Huetchen','sigma = 1','sigma = 10');
axis([0,8,-14,6])
