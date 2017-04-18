function y = somefunc(x,n)
y = 0;
for i = 1 : n
	y = y + x.^i;
end
