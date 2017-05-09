function X = mygrad(A, b, e, x)
% Implementiertes Gradientenverfahren
X = [x];

k = 0;
r = b - A*x;

while norm(r) > e
	a = r'*r/(r'*A*r);
	x = x + a * r;
	k = k + 1;
	X = [X,x];
	r = b - A*x;
end

end
