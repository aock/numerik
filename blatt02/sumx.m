function y=sumx(x,L)

if (L > 0)
	%% left intervall 1 - 2^L/2
	left = x(1:(2^L)/2);
	%% right intervall  2^L/2 + 1 - 2^L
	right = x((2^L)/2+1:2^L);
	y = sumx(left, L-1) + sumx(right, L-1);
else
	y = x(1);
end

end
