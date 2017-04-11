%Machine Zahlen: Mantissenlaenge t=3, Basis g=2, Exponenten [-2,...,3]
p = -2:1:3;
M = maschinenZahlen(3,2,p);
dbtype maschinenZahlen.m;
disp(M);

plot(reshape(M,[size(M,1)*length(p) ,1]), zeros(size(M,1)*length(p)),'rx');

