%% Aufgabe 5.25

% 1) Gradientenabstieg

dbtype mygrad.m

A = [1,-1;-1,5];
b = [0;0];
e = 10^(-4);
x = [5;3];

result = mygrad(A,b,e,x);

disp(result)

% 2) Konjugierter Gradientenabstieg

dbtype myconjgrad.m

result = mygrad(A,b,e,x);

disp(result)

disp('-> myconjgrad benoetigt weniger Iterationen (2).')

disp('Ausfuehrung blatt5.m')

blatt5

