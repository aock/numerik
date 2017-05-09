function X = myconjgrad(A,b,e,x)
% Implementierung des konjugierten Gradientenverfahrens

X = [x];

%Initialisierung
r = b - A*x;
p = r;
z = r'*r;
v = A*p;
a = z/(p'*v);

while norm(r) > e
	v = A * p;
	a = z/(p'*v);
	x = x + a*p;
	r = r - a*v;
	z_tmp = z;
	z = r'*r;
	p = r + (z/z_tmp) * p;
	X = [X,x];
end

end
