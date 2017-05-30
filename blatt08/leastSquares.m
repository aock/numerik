function [C,p] = leastSquares(x,y)

A = [ones(length(x),1),x];

b = A'*y;
t = A'*A\b;

C = exp(t(1));
p = t(2);

end
