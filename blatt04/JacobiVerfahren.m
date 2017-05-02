function x = JacobiVerfahren(A,b,xs,kmax)
	n = size(A,1);
		
	xs_tmp = xs;
	
	for k=[0:kmax]
		for i=1:n
			tmp=0;
			for j=[1:i-1,i+1:n]
				tmp = tmp + A(i,j) * xs(j);
			end
			xs_tmp(i) = (b(i) - tmp)/(A(i,i));
		end
		
		xs = xs_tmp;
	end
	x = xs_tmp;
end
