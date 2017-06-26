function c = constructC(n)
% Funktion, die erzeugenden Vektor c berechnet

x = eye(n);
B = applyT(x);
d = B(:,1:1);
e = flipud(d);

e = e(1:n-1,:);
t = [e;d];
c = ones(n,1);
c(1) = t(n);

% Berechne Eintraege wie in Aufgabenteil a)
for i=2:n
    c(i) = (t(n-1+i)*(n-(i-1)) + t(2*n+1-i)*(i-1))/n;
end

end

