function C = myCholesky(A)
n = size(A,2);
C = zeros(n,n);	

for j=1:n
	
	for k=1:j-1 
		tmp = 0;
		for l=1:k-1
			tmp = tmp + C(j,l) * conj(C(k,l));
		end
		C(j,k) = (A(j,k) - tmp) / C(k,k);
	end
	
	cj = abs( C(j,:) );
	cj = cj.^2;
	cj_sum = sum(cj(1:j-1));
	C(j,j) = sqrt(A(j,j) - cj_sum );
	
	end
end
