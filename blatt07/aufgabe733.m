%% Aufgabe 7.33

A = [0, 0, -2; 1, 2, 1; 1, 0, 3 ];
z = [1; 0; 0];

dbtype Potenzmethode.m
[l, z] = Potenzmethode(A,z,100);
disp('Der im Betrag groesste Eigenwert ist:')
disp(l)
disp('Der zugehoerige Eigenvektor ist:')
disp(z)
